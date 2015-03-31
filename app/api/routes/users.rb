module Routes
  # A simple API demonstrating user fetching and creation.
  class Users < Grape::API
    desc 'Returns users',
         auth: { scopes: %w(public write) }
    get 'users' do
      present User.all, with: UsersRepresenter
    end

    desc 'Returns a specific user',
         auth: { scopes: %w(public write) }
    get 'users/:id' do
      present User.find(params[:id]), with: UserRepresenter
    end

    desc 'Creates a new user',
         auth: { scopes: %w(write) }
    params do
      requires :user, type: Hash do
        requires :name, type: String
        optional :organisation_id, type: Integer
      end
    end
    post 'users' do
      user = create User, with: UserRepresenter, from: declared(params)[:user]

      present user, with: UserRepresenter
    end
  end
end
