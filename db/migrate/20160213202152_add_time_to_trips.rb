class AddTimeToTrips < ActiveRecord::Migration
  def change
  	add_column :trips, :trip_time , :time
  end
end
