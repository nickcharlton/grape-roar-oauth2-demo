require 'rails_helper'

RSpec.describe Routes::Users, type: :request do
  context :without_data do
    it 'gives an empty list of users' do
      get '/users'

      expect(response.status).to eq 200
      json = JSON.parse(response.body)

      expect(json['users'].count).to eq 0
    end
  end

  context :with_data do
    it 'lists a user after one is added' do
      user = create(:user)

      get '/users'

      expect(response.status).to eq 200
      json = JSON.parse(response.body)

      expect(json['users'].count).to eq 1
      expect(json['users'].first['name']).to eq user.name

      links = json['users'].first['_links']
      expect(links['self']['href']).to include("/users/#{user.id}")
    end
  end
end
