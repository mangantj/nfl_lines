class Game < ActiveRecord::Base
  belongs_to :week
  has_many :picks
  accepts_nested_attributes_for :picks, :allow_destroy => true
  attr_accessible :week_id, :away_team_id, :home_team_id, :date, :picks_attributes

  TEAM_NAME = {
    '1' => '49ers',
    '2' => 'Bears',
    '3' => 'Bengals',
    '4' => 'Bills', 
    '5' => 'Broncos',
    '6' => 'Browns', 
    '7' => 'Bucaneers',
    '8' => 'Cardinals',
    '9' => 'Chargers',
    '10' => 'Cheifs',
    '11' => 'Colts',
    '12' => 'Cowboys',
    '13' => 'Dolphins',
    '14' => 'Eagles',
    '15' => 'Falcons', 
    '16' => 'Giants', 
    '17' => 'Jaguars',
    '18' => 'Jets',
    '19' => 'Lions',
    '20' => 'Packers',
    '21' => 'Panthers',
    '22' => 'Patriots',
    '23' => 'Raiders',
    '24' => 'Rams',
    '25' => 'Ravens',
    '26' => 'Redskins',
    '27' => 'Saints',
    '28' => 'Seahawks',
    '29' => 'Steelers', 
    '30' => 'Texans',
    '31' => 'Tians',
    '32' => 'Vikings'
  }
end
