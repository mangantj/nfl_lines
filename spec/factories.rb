require 'factory_girl'

FactoryGirl.define do
  factory :pick do |pick|
    pick.user_id 1
    pick.game_id 1
    pick.week_id 1
    pick.spread 4
  end
end