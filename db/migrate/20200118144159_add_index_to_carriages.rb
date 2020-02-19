class AddIndexToCarriages < ActiveRecord::Migration[6.0]
  def change
    add_index :carriages, [:type, :id]
    add_index :carriages, :train_id
  end
end
