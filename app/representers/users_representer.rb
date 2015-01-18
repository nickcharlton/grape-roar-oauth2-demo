class UsersRepresenter < Grape::Roar::Decorator
  include Roar::JSON::HAL
  include Roar::Hypermedia

  collection :entries, extend: UserRepresenter, as: :users
end
