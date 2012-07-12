class AddWeekNumberToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :week_num, :integer
  end
end
