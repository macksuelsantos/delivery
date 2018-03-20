class Order < ApplicationRecord
  validates :client_id, :address, :status, :payment, :fare, presence: true
  belongs_to :client
  has_one :address, dependent: :destroy

  accepts_nested_attributes_for :address, :allow_destroy => true
end
