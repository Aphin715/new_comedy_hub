# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :act do
    association :comedian
    association :show
  end
end
