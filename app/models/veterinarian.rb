class Veterinarian < ApplicationRecord
  belongs_to :veterinary_office
  validates_presence_of :name
end