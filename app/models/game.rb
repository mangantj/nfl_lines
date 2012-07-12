class Game < ActiveRecord::Base
  belongs_to :week
  has_many :user_picks
  has_many :picks
  attr_accessible :week_id, :away_team_id, :home_team_id, :date
end
