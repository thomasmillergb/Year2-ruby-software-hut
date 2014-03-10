# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "MyString"
    name "MyString"
    surname "MyString"
    email "MyString"
    password "MyString"
    userLevel 1
  end
end
