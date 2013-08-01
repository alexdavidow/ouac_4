# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shopping_cart do
    total_price 1
    total_num_of_items 1
  end
end
