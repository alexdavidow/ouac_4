# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_order do
    shopping_cart_id 1
    product_id 1
    quantity 1
  end  
end
