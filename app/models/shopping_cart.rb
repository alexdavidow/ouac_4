class ShoppingCart < ActiveRecord::Base
  attr_accessible :user_id, :user, :total_price, :num_of_items
  belongs_to :user, dependent: :destroy
  has_many :product_orders

  def add_item
  end

  def remove_item
    # find product_order by id, set it to variable current_item
    # 
  end

end
