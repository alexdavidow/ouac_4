class AddImageToFrostings < ActiveRecord::Migration
  def change
    add_column :frostings, :image, :text
  end
end
