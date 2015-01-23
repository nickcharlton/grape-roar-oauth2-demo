require 'rails_helper'

describe Routes::Users do
  describe 'without data' do
    it 'gives an empty list of users' do
      get '/users'

      expect(response.body).to eq({ users: [] }.to_json)
    end
  end
end
