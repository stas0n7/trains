class CreateCarriages < ActiveRecord::Migration[6.0]
  def change
    create_table :carriages do |t|
      t.string  :type
      t.integer :top_seats
      t.integer :bottom_seats
      t.integer :side_top_seats
      t.integer :side_bottom_seats
      t.integer :seated_seats
      t.integer :train_id
      t.integer :number
      t.timestamps
    end
  end
end
