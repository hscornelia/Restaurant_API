class AddLocationToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :location, :string
    add_column :restaurants, :pricerange, :string
    add_column :restaurants, :category, :string
    add_column :restaurants, :point, :float
  end
end
