class OrderProduct < ActiveRecord::Base
  attr_accessible :number_product, :order_id, :product_id
  belongs_to :order
end
