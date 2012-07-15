require 'factory_girl'

FactoryGirl.define do
  factory :week do
    year 2012
    start_date {8.days.ago}
    end_date {0.days.ago}
    before(:build)  do |week|
      FactoryGirl.create_list(:game, week: week)
    end
  end

  factory :game, :parent => :week do
    away_team_id 1
    home_team_id 2
    date {4.days.ago}
    week
    before(:build) do |game|
      FactoryGirl.create_list(:pick, game: game)
    end
  end

  factory :pick do
    user_id 1
    spread 4
    game
    week
  end
end