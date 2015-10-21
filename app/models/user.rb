class User < ActiveRecord::Base

  has_many :items
  has_many :parts, through: 'items'
  validates :email, presence: true

end



