# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grant do
    name "MyString"
    start "2014-03-10"
    deadline "2014-03-10"
    status 1
    funder nil
    awarded nil
  end
end
