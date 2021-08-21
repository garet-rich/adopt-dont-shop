class VeterinaryOffice < ApplicationRecord
  has_many :veterinarians
  validates_presence_of :name
end