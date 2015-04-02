module Routes
  # A simple API demonstrating user fetching and creation.
  class Users < Grape::API
    desc 'Returns users'
    oauth2 'public'
    get 'users' do
      present User.all, with: UsersRepresenter
    end

    desc 'Returns a specific user'
    oauth2 'public'
    get 'users/:id' do
      present User.find(params[:id]), with: UserRepresenter
    end

    desc 'Creates a new user'
    oauth2 'write'
    params do
      requires :name, type: String
      requires :email, type: String
      requires :password, type: String

      optional :organisation_id, type: Integer
    end
    post 'users' do
      request_params = declared(params, include_missing: false)
      user = create User, with: UserRepresenter, from: request_params

      present user, with: UserRepresenter
    end
  end
end
