# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :line do
    sequence(:line_id) { |n| "test.line#{n}"}
    sequence(:name) { |n| "路線名#{n}"}
  end
end
