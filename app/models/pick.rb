class Pick < ActiveRecord::Base
  belongs_to :week
  belongs_to :game
  belongs_to :user
  attr_accessible :game_id, :week_id, :user_id, :spread
end
