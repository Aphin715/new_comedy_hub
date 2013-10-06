# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comedian do
    first_name "MyString"
    last_name "MyString"
    bio "MyText"
    youtube_url "MyString"
  end
end
