class AddColumnsDatesDestinations < ActiveRecord::Migration[5.2]
  def change
      add_column :destinations, :depart_date, :date 
      add_column :destinations, :return_date, :date 
  end
end
