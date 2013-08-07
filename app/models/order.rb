class Order < ActiveRecord::Base
  attr_accessible :mailing_address, :phone_number, :email_address, :delivery_date
  belongs_to :shopping_cart
  has_many :product_orders
end
