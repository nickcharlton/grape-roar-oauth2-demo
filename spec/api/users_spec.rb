require 'rails_helper'

RSpec.describe Routes::Users, type: :request do
  context :public_scope do
    it 'can get a list of users' do
      create_doorkeeper_app(scopes: 'public')

      get '/users', access_token: @token.token

      expect(response.status).to eq 200
      json = JSON.parse(response.body)

      expect(json['users'].count).to eq 1
      expect(json['users'].first['name']).to eq @user.name

      links = json['users'].first['_links']
      expect(links['self']['href']).to include("/users/#{@user.id}")
    end

    it 'can get a specific user' do
      create_doorkeeper_app(scopes: 'public')
      user = create(:user, email: 'user@example.com')

      get "/users/#{user.id}", access_token: @token.token

      expect(response.status).to eq 200
      json = JSON.parse(response.body)

      expect(json['id']).to eq user.id
      expect(json['name']).to eq user.name
    end

    it 'cannot create a user' do
      create_doorkeeper_app(scopes: 'public')

      post '/users', user: { name: 'User' }, access_token: @token.token

      expect(response.status).to eq 403
    end
  end

  context :write_scope do
    it 'can create a user' do
      create_doorkeeper_app(scopes: 'public write')

      post '/users', name: 'User', password: 'password',
                     email: 'user@example.com',  access_token: @token.token

      expect(response.status).to eq 201
      json = JSON.parse(response.body)

      expect(json['name']).to eq 'User'
      expect(json['email']).to eq 'user@example.com'
    end
  end
end
