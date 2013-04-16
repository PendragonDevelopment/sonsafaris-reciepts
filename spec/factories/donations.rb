# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :donation do
    donation_date "2013-04-16"
    amount 1
    details "MyString"
  end
end
