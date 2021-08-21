require 'rails_helper'

describe Veterinarian, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
  end

  describe 'relationships' do
    it {should belong_to :veterinary_office}
  end
end