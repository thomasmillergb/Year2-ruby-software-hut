# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :deliverable do
    grant nil
    name "MyString"
    description "MyString"
    start "2014-03-10"
    deadline "2014-03-10"
    status 1
  end
end
