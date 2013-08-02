require 'spec_helper'

describe Product do
  describe 'validations' do
    it 'should have many product orders' do
      product = create(:product)
      item = create(:product_order)
      item2 = create(:product_order)
      item3 = create(:product_order)
      item4 = create(:product_order)
      
      product.product_orders << item
      product.product_orders << item2
      product.product_orders << item3
      product.product_orders << item4

      product.product_orders.include?(item).should be_true

      product.product_orders.each do |i|
        puts i.id
      end
    end
  end
end
