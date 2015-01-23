require "#{Rails.root}/lib/hypermedia_extensions.rb"

class User < ActiveRecord::Base
  include ::HypermediaExtensions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :oauth_applications,
           class_name: 'Doorkeeper::Application', as: :owner

  belongs_to :organisation

  validates :name, presence: true
end
