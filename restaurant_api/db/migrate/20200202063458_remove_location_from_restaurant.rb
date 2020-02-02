class RemoveLocationFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_reference :restaurants, :location, null: false, foreign_key: true
    remove_reference :restaurants, :category, null: false, foreign_key: true
    remove_reference :restaurants, :pricerange, null: false, foreign_key: true
    remove_column :restaurants, :coordinate, :string
  end
end
