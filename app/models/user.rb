class User < ActiveRecord::Base
  has_many :items

  has_secure_password

  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
