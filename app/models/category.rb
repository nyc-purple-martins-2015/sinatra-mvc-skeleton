class Category < ActiveRecord::Base
  has_many :items

  validates :title, presence: true, uniqueness: true
end
