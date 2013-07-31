class AddImageToCookies < ActiveRecord::Migration
  def change
    add_column :cookies, :image, :text
  end
end
