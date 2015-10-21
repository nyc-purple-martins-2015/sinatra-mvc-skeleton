class Item < ActiveRecord::Base

  belongs_to :owner,
    class_name: 'User',
    foreign_key: 'user_id'

  has_many :parts

  validates :name, presence: true, length: {within: 5..20}

end


ActiveRecord::Base.logger = Logger.new(STDOUT)
