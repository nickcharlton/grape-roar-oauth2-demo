module UserRepresenter
  include Roar::JSON::HAL
  include Roar::Hypermedia
  include Grape::Roar::Representer

  property :id
  property :name

  link :self do
    represented.to_link
  end
end
