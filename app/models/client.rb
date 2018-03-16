class Client < ApplicationRecord
  validates :name, :phone, presence: true
  has_many :addresses

  accepts_nested_attributes_for :addresses, :allow_destroy => true
end
