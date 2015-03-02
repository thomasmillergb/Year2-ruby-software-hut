# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    description "MyString"
    startdate "2014-03-27"
    enddate "2014-03-27"
    status 1
  end
end
