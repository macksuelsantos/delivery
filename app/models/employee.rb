class Employee < ApplicationRecord
  validates :address_id, presence: true
  has_one :address, dependent: :destroy

  accepts_nested_attributes_for :address, :allow_destroy => true
end
