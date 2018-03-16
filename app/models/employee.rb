class Employee < ApplicationRecord
  belongs_to :address
  validates :name, :phone, :address, presence: true
end
