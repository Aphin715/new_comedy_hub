# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comedy_club do
    sequence(:name) { |n| "Comedy Club ##{n}" }
    location "MyString"
  end
end
