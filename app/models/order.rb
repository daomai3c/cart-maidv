class Order < ActiveRecord::Base
  attr_accessible :user_id
  belongs_to :user
  has_many :order_products, dependent: :destroy

  validates :user_id, presence: true
end
