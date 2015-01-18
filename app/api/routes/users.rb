module Routes
  class Users < Grape::API
    desc 'Returns users'
    get 'users' do
      present User.all, with: UsersRepresenter
    end

    get 'users/:id' do
      present User.find(params[:id]), with: UserRepresenter
    end
  end
end
