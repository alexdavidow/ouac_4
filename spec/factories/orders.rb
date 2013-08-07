# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    mailing_address "MyString"
    payment_made false
    phone_number "MyString"
    delivery_date "2013-08-07"
  end
end
