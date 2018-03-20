class Client < ApplicationRecord
  validates :name, :phone, presence: true
  has_many :addresses, dependent: :destroy

  has_many :orders, dependent: :destroy
  accepts_nested_attributes_for :addresses, :allow_destroy => true
end
