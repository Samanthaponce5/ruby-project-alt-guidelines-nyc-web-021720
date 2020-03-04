class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :tourist_id
      t.integer :destination_id
   end
  end
end
