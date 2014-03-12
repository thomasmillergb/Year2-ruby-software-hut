# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grant do
    name "MyString"
    start "2014-03-11"
    deadline "2014-03-11"
    status 1
    funder_id 1
    user_id 1
  end
end
