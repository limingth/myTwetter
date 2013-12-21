class CreateTwets < ActiveRecord::Migration
  def change
    create_table :twets do |t|

      t.timestamps
    end
  end
end
