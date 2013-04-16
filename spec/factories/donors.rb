# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :donor do
    first_name "MyString"
    last_name "MyString"
    street_address "MyString"
    city "MyString"
    state "MyString"
    zip_code 1
  end
end
