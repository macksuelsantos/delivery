class Employee < ApplicationRecord
  validates :name, :phone, :address, presence: true
  has_one :address, dependent: :destroy

  accepts_nested_attributes_for :address, :allow_destroy => true
end
