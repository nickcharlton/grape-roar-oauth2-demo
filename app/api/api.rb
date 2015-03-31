class API < Grape::API
  format :json
  formatter :json, Grape::Formatter::Roar
  use ::WineBouncer::OAuth2

  rescue_from WineBouncer::Errors::OAuthUnauthorizedError do |_e|
    error = { id: 'unauthorized',
              message: 'You must provide an OAuth token to complete this '\
                       'request.' }

    error_response(status: 401, message: error)
  end

  rescue_from WineBouncer::Errors::OAuthForbiddenError do |_e|
    error = { id: 'forbidden',
              message: 'This operation is not permitted with this scope.' }

    error_response(status: 403, message: error)
  end

  mount Routes::Users
end
