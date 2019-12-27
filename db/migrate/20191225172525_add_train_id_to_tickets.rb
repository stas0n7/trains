class AddTrainIdToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :train_id, :integer
    add_column :tickets, :first_name, :string
    add_column :tickets, :last_name, :string
  end
end
