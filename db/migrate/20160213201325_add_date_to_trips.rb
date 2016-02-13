class AddDateToTrips < ActiveRecord::Migration
  def change
  	add_column :trips, :trip_date , :date
  end
end
