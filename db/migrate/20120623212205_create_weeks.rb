class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :year
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
