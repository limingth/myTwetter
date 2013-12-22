class AddFollowingIdToFollows < ActiveRecord::Migration
  def change
    add_column :follows, :following_id, :interger
  end
end
