class RemovePassangerFromTickets < ActiveRecord::Migration[6.0]
  def change
    remove_column :tickets, :passanger
  end
end
