class RemoveColumnFromTourists < ActiveRecord::Migration[5.2]
  def change
    remove_column :tourists, :age
  end
end
