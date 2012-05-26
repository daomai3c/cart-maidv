class Product < ActiveRecord::Base
  attr_accessible :catalog_id, :description, :name , :price
  belongs_to :catalog
  validates :catalog_id , presence: true
  validates :name, presence: true
  validates :description , presence: true
  validates :price ,presence: true
end
