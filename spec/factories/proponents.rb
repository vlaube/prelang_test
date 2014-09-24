# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :proponent do
    name "MyString"
    email "MyString"
    document "MyString"
    proponent_type false
    phone "MyString"
    mobile "MyString"
    zipcode "MyString"
    street "MyString"
    number "MyString"
    complement "MyString"
    neighborhood "MyString"
    city "MyString"
    state "MyString"
    residential nil
  end
end
