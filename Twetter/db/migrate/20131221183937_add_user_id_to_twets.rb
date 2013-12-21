class AddUserIdToTwets < ActiveRecord::Migration
  def change
    add_column :twets, :user_id, :interger
  end
end
