class Week < ActiveRecord::Base
  has_many :games, :dependent => :destroy
  accepts_nested_attributes_for :games
  attr_accessible :year, :start_date, :end_date, :week_num, :games_attributes
end
