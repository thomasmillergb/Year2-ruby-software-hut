# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :deliverable do
    grants_id 1
    name "MyString"
    description "MyString"
    start "2014-03-11"
    deadline "2014-03-11"
    status 1
  end
end
