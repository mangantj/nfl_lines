require 'factory_girl'

FactoryGirl.define :pick do |f|
  f.user_id 1
  f.game_id 1
  f.week_id 1
  f.spread 4
end