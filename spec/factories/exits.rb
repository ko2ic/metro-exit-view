# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :exit do
    station_id 'test.station1'
    sequence(:name) { |n| "出入口#{n}"}
    lat 35.719934739508
    lon 139.78414503047
    heading 1
  end
end
