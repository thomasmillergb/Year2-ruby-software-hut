# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grant do
    name "MyString"
    dateStarted "2014-03-03"
    status ""
    allocationDeadline "2014-03-03"
  end
end
