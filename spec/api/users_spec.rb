require 'spec_helper'

describe Routes::Users do
  it '' do
    get '/users'

    expect(response.body).to eq([{ id: 1, name: 'Nick' }].to_json)
  end
end
