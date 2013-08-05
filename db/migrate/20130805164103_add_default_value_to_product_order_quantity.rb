class AddDefaultValueToProductOrderQuantity < ActiveRecord::Migration
  def change
    change_column :product_orders, :quantity, :integer, :default => 1
  end
end
