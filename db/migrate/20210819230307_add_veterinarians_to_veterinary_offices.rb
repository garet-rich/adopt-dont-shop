class AddVeterinariansToVeterinaryOffices < ActiveRecord::Migration[5.2]
  def change
    add_reference :veterinarians, :veterinary_offices, foreign_key: true, name: "veterinary_office_id"
  end
end
