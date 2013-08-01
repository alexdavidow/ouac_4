class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.integer :total_price
      t.integer :num_of_items

      t.timestamps
    end
  end
end
