class AddImageToCupcakes < ActiveRecord::Migration
  def change
    add_column :cupcakes, :image, :text
  end
end
