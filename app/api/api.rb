class API < Grape::API
  format :json
  formatter :json, Grape::Formatter::Roar

  mount Routes::Users
end
