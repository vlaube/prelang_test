# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    item_type 1
    name "MyString"
    item_value "9.99"
    residential nil
  end
end
