class CreateRates < ActiveRecord::Migration[6.0]
  def change
    create_table :rates do |t|
      t.integer :score
      t.text :description

      t.timestamps
    end
  end
end
