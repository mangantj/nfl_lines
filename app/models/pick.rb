class Pick < ActiveRecord::Base
  belongs_to :week
  belongs_to :game
  belongs_to :user
  attr_accessible :game_id, :week_id, :user_id, :spread

  validates :spread, :presence => true
  validate :value_for_spread

  def value_for_spread
    if !spread.blank?
      unless spread % 0.5 == 0
        errors.add(:spread, "is invalid value.")
      end
    end
  end
end
