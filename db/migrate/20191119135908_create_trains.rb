class CreateTrains < ActiveRecord::Migration[6.0]
  def change
    create_table :trains do |t|
      t.string  :number
      t.integer :railway_station_id
      t.integer :route_id

      t.timestamps
    end
  end
end
