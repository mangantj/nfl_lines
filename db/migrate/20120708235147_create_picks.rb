class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :user_pick_id
      t.integer :game_id
      t.integer :spread

      t.timestamps
    end
  end
end
