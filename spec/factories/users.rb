# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
    factory :user do
    sequence(:username) {|n| "username#{n}"}
    sequence(:email) {|n| "person#{n}@email.com" }
    password "password"
    password_confirmation "password"
  end
end
