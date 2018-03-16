class Address < ApplicationRecord
  validates :address, presence: true
  belongs_to :client, optional: true
end
