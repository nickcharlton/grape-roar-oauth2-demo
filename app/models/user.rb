class User < ActiveRecord::Base
  belongs_to :organisation

  validates :name, presence: true
end
