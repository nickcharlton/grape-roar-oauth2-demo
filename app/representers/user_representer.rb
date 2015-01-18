class UserRepresenter < Grape::Roar::Decorator
  include Roar::JSON::HAL
  include Roar::Hypermedia

  property :id
  property :name
end
