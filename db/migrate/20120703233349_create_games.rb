class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :week_id
      t.integer :away_team_id
      t.integer :home_team_id
      t.date :date

      t.timestamps
    end
  end
end
