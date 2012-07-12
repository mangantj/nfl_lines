class Week < ActiveRecord::Base
  has_many :games
  has_many :picks, :dependent => :destroy
  accepts_nested_attributes_for :picks
  attr_accessible :year, :start_date, :end_date, :week_num, :picks_attributes
end
