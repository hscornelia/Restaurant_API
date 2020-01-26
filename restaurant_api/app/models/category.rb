class Category < ApplicationRecord
    validates :category_name, uniqueness: true
end
