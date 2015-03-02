# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :funder do
    name "MyString"
    type_id 1
    phone "MyString"
    email "MyString"
  end
end
