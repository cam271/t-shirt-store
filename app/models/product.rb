class Product < ApplicationRecord
  scope :category, ->(category) { where(category: men) }
end
