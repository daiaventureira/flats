class AddFieldsToProperty < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :bathrooms, :integer
    add_column :properties, :parking_spots, :boolean
    add_column :properties, :pets, :boolean
    add_column :properties, :daily_price, :decimal
  end
end
