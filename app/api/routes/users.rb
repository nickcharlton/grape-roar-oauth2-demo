module Routes
  class Users < Grape::API
    desc 'Returns users'
    get :users do
      [{id: 1, name: 'Nick'}]
    end
  end
end
