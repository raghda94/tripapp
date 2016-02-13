class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :joined_trips, :integer
    remove_column :users, :posted_trips, :integer
  end
end
