class CreateSampleCrawlingRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :sample_crawling_restaurants do |t|
      t.string :title
      t.string :point
      t.string :address

      t.timestamps
    end
  end
end
