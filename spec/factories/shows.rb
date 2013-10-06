# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :show do
    association :comedy_club
    start_time { Time.now + (rand(5) +1).days }
    end_time { start_time + 4.hours }
    sequence(:title) { |n| "Show ##{n}" }

    trait :with_acts do
      ignore do
        acts_count 5
      end

      after(:create) do |show, evaluator|
        FactoryGirl.create_list(:act, evaluator.acts_count, show: show)
      end
    end
  end
end
