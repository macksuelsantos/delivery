class Client < ApplicationRecord
  belongs_to :address, required: false
  validates :name, :phone, presence: true
end
