class AddOrderIdToProductOrders < ActiveRecord::Migration
  def change
    remove_column :product_orders, :shopping_cart_id, :integer
    add_column :product_orders, :order_id, :integer
  end
end
