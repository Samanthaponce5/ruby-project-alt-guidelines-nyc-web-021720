class RemoveColumnsTravelDatesFromT < ActiveRecord::Migration[5.2]
  def change
      remove_column :tourists, :depart_date
      remove_column :tourists, :return_date
  end
end
