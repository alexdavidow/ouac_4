class AddPriceToProductOrders < ActiveRecord::Migration
  def change
    add_column :product_orders, :price, :decimal, :default => 0.99
  end
end
