require 'spec_helper'

describe Product do
  describe 'validations' do
    it 'should have many product orders' do
      product = create(:product)
      item = create(:item)
      item2 = create(:item2)
      item3 = create(:item3)
      item4 = create(:item4)
    end
  end
end
