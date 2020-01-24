class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.integer :cat_id
      t.integer :rate_id
      t.integer :price_id
      t.integer :loc_id

      t.timestamps
    end
  end
end
