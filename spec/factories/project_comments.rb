# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_comment do
    name "MyString"
    comment "MyString"
    user_id 1
    project_id "MyString"
  end
end
