class AddTimeColumnsToRailwayStationsRoutes < ActiveRecord::Migration[6.0]
  def change
    add_column :railway_stations_routes, :depart_time, :string
    add_column :railway_stations_routes, :arrival_time, :string
  end
end
