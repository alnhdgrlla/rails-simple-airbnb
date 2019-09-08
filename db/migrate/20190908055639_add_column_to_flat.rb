class AddColumnToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :price_per_night, :integer
  end
end
