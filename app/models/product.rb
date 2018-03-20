class Product < ApplicationRecord
  validates :name, :price, :unit_id, presence: true
  belongs_to :unit
end
