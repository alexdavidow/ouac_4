class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :mailing_address
      t.boolean :payment_made
      t.string :phone_number
      t.date :delivery_date

      t.timestamps
    end
  end
end
