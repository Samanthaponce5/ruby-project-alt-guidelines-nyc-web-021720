class AddColumnTravelDatesTourists < ActiveRecord::Migration[5.2]
  def change
    add_column :tourists, :depart, :date 
    add_column :tourists, :return, :date 
  end
end
