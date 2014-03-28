# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :add_user do
    name "MyString"
    password "MyString"
    level 1
    email "MyString"
  end
end
