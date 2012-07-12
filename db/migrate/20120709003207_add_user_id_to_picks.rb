class AddUserIdToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :user_id, :integer
  end
end
