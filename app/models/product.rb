class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :weight

  has_many :product_orders
  has_many :orders, through: :product_orders

  def to_s
    name
  end
end
