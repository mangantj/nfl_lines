class AddWeekIdToPicks < ActiveRecord::Migration
  def change
    remove_column :picks, :user_pick_id
    add_column :picks, :week_id, :integer
  end
end
