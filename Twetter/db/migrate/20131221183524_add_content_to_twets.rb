class AddContentToTwets < ActiveRecord::Migration
  def change
    add_column :twets, :content, :text
  end
end
