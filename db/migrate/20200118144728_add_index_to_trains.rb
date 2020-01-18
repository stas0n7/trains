class AddIndexToTrains < ActiveRecord::Migration[6.0]
  def change
    add_index :trains, :route_id
    add_index :trains, :railway_station_id
  end
end
