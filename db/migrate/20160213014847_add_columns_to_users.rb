class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :joined_trips, :integer, :null => false, :default => 0

    add_column :users, :posted_trips, :integer, :null => false, :default => 0

  end
end
