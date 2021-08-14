class AddVeterinariansToVeterinaryOffices < ActiveRecord::Migration[5.2]
  def change
    add_reference :veterinarians, :veterinary_offices, index: true, foreign_key: true
  end
end
