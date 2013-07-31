class AddImageToIceCreams < ActiveRecord::Migration
  def change
    add_column :ice_creams, :image, :text
  end
end
