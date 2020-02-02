class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :coordinate
      t.string :business_hour
      t.boolean :parking_space
      t.references :location, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :pricerange, null: false, foreign_key: true
      # t.references :point, null: false, foreign_key: true
      # t.references :picture, null: false, foreign_key: true
      # t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
