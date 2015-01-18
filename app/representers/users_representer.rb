module UsersRepresenter
  include Roar::JSON::HAL
  include Roar::Hypermedia
  include Grape::Roar::Representer

  collection :entries, extend: UserRepresenter, as: :users
end
