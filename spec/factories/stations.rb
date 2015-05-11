# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :station do
    sequence(:station_id) { |n| "test.station#{n}"}
    line_id 'test.line1'
    sequence(:name) { |n| "駅名#{n}"}
  end
end
