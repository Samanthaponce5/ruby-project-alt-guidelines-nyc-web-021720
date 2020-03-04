class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.integer :destination_id
      t.integer :activity_id
    end
  end
end
