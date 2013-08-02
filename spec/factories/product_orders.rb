# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    shopping_cart_id 1
    product_id 1
    quantity 1
  end
  
  factory :item2 do
    shopping_cart_id 2
    product_id 1
    quantity 1
  end

  factory :item3 do
    shopping_cart_id 3
    product_id 1
    quantity 1
  end

  factory :item4 do
    shopping_cart_id 4
    product_id 1
    quantity 1
  end
end
