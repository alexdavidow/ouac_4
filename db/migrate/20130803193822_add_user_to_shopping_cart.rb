class AddUserToShoppingCart < ActiveRecord::Migration
  def change
    add_column :shopping_carts, :user, :string
  end
end
