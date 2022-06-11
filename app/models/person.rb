class Person < ApplicationRecord
  has_one :address, dependent: :destroy
  has_many :pets, dependent: :destroy

  accepts_nested_attributes_for :address, :pets
end
