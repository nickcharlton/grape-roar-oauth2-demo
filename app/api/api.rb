class API < Grape::API
  format :json
  formatter :json, Grape::Formatter::Roar
  use ::WineBouncer::OAuth2

  mount Routes::Users
end
