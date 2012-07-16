require 'factory_girl'

FactoryGirl.define do
  factory :week do
    year 2012
    start_date {8.days.ago}
    end_date {0.days.ago}
    week_num 1
    after(:build)  do |week|
      week.games << FactoryGirl.create(:game)
    end
  end

  factory :game do
    away_team_id 1
    home_team_id 2
    date {4.days.ago}
    after(:build) do |game|
      game.picks << FactoryGirl.create(:pick)
    end
  end

  factory :pick do
    user_id 1
    spread 4
  end
end