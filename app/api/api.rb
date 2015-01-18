class API < Grape::API
  format :json

  mount Routes::Users
end
