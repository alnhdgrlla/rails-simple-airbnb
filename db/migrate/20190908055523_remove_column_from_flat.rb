class RemoveColumnFromFlat < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :price_per_unit, :integer
  end
end
