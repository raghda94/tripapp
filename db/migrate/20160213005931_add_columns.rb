class AddColumns < ActiveRecord::Migration
  def change
  	add_column :users, :joined_trips, :integer
  	add_column :users, :posted_trips, :integer

  end
end
