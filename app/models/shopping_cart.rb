class ShoppingCart < ActiveRecord::Base
  attr_accessible :user_id, :user, :total_price, :num_of_items
  belongs_to :user, dependent: :destroy
  has_many :product_orders
end
