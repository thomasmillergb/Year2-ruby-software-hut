# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task_comment do
    name "MyString"
    comment "MyString"
    user_id 1
    task_id 1
  end
end
