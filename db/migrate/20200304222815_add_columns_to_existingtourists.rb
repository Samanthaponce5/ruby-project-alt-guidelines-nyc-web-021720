class AddColumnsToExistingtourists < ActiveRecord::Migration[5.2]
  def change
    add_column :tourists, :depart_date, :date 
    add_column :tourists, :return_date, :date 
  end
end
