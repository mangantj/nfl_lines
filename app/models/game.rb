class Game < ActiveRecord::Base
  belongs_to :week
  has_many :picks, :dependent => :destroy
  accepts_nested_attributes_for :picks
  attr_accessible :week_id, :away_team_id, :home_team_id, :date, :picks_attributes
end
