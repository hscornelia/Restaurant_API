class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :place
      t.text :description

      t.timestamps
    end
  end
end
