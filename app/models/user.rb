require "#{Rails.root}/lib/hypermedia_extensions.rb"

class User < ActiveRecord::Base
  include ::HypermediaExtensions

  belongs_to :organisation

  validates :name, presence: true
end
