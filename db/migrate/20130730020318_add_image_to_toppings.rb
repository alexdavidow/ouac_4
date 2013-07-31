class AddImageToToppings < ActiveRecord::Migration
  def change
    add_column :toppings, :image, :text
  end
end
