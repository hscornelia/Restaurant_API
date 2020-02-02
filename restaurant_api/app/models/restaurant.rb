class Restaurant < ApplicationRecord
  belongs_to :location
  belongs_to :category
  belongs_to :pricerange
  belongs_to :point
  belongs_to :picture
  belongs_to :tag
end
