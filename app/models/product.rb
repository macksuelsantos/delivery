class Product < ApplicationRecord
  validates :name, :price, :unit, presence: true
  belongs_to :unit
end
