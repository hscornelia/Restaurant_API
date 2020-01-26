class CreatePriceranges < ActiveRecord::Migration[6.0]
  def change
    create_table :priceranges do |t|
      t.integer :minimum
      t.integer :maximum

      t.timestamps
    end
  end
end
