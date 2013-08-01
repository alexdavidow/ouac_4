class CreateProductOrders < ActiveRecord::Migration
  def change
    create_table :product_orders do |t|
      t.integer :shopping_cart_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
