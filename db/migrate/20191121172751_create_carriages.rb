class CreateCarriages < ActiveRecord::Migration[6.0]
  def change
    create_table :carriages do |t|
      t.string  :carriage_type
      t.integer :top_places
      t.integer :lower_places
      t.integer :train_id
      t.timestamps
    end
  end
end
