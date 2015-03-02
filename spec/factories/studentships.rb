# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :studentship do
    student_subcat_id 1
    code "MyString"
    startdate "2014-03-18"
    enddate "MyString"
    fire false
    screenttest false
    training false
    firestatus false
    screenstatus false
    trainstatus false
    m12 false
    m12date "2014-03-18"
    m24 false
    m24date "2014-03-18"
    m36 false
    m36 "2014-03-18"
    complete false
  end
end
