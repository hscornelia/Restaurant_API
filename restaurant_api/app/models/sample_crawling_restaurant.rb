class SampleCrawlingRestaurant < ApplicationRecord
  # validates_uniqueness_of :[Column of DB]
  validates_uniqueness_of :title
end
