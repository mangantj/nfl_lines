class Week < ActiveRecord::Base
  has_many :games
  accepts_nested_attributes_for :games, :allow_destroy => true
  attr_accessible :year, :start_date, :end_date, :week_num, :games_attributes
end
