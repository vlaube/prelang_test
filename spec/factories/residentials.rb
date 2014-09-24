# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :residential do
    user nil
    status 1
    contract "MyString"
    product nil
  end
end
