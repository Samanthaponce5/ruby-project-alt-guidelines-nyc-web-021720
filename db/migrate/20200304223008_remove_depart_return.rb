class RemoveDepartReturn < ActiveRecord::Migration[5.2]
  def change
    remove_column :tourists, :depart 
    remove_column :tourists, :return
  end
end
