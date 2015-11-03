class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :price, presence: true
end
