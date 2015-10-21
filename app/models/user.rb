class User < ActiveRecord::Base

  has_many :items,
    foreign_key: 'user_id'
    class_name: 'Product'

  has_many :parts, through: 'items'

  validates :email, presence: true


end



