class AddColumnsToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :status, :string
    add_column :locations, :bedrooms, :string
    add_column :locations, :baths, :string
    add_column :locations, :yearbuilt, :integer
    add_column :locations, :housesize, :float
    add_column :locations, :lotsize, :float
    add_column :locations, :generaldetails, :text
    add_column :locations, :propertytype, :string
    add_column :locations, :pool, :boolean
    add_column :locations, :fireplace, :boolean
    add_column :locations, :garage, :boolean
    add_column :locations, :price, :float
  end
end
