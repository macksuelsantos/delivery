class Address < ApplicationRecord
  validates :address, presence: true
  belongs_to :client, optional: true
  belongs_to :employee, optional: true
  belongs_to :order, optional: true
end
