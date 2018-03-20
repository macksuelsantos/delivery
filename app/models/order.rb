class Order < ApplicationRecord
  validates :client_id, :address, :product_items, :status, :payment, :fare, presence: true
  belongs_to :client
  has_one :address, dependent: :destroy
  has_many :product_items, dependent: :destroy

  accepts_nested_attributes_for :address, :allow_destroy => true
  accepts_nested_attributes_for :product_items, :allow_destroy => true
end
