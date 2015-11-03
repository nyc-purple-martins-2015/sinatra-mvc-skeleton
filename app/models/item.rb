class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :price, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
end
