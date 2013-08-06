class Product < ActiveRecord::Base
  attr_accessible :name, :price, :quantity, :image, :description
  has_many :product_orders
  has_one :shopping_carts, through: :product_orders

  before_destroy :ensure_not_referenced_by_order

  private

  def ensure_not_referenced_by_order
    if product_orders.empty?
      return true
    else
      errors.add(:base, 'Products are present in orders')
      return false
    end
  end

end
