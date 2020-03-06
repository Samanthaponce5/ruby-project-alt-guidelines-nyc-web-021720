class AddColumnToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :confirmation_num, :integer
  end
end
