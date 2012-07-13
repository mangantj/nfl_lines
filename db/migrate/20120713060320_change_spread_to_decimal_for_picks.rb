class ChangeSpreadToDecimalForPicks < ActiveRecord::Migration
  def up
    change_column :picks, :spread, :decimal, :precision => 3, :scale => 1
  end

  def down
    change_column :picks, :spread, :integer
  end
end
