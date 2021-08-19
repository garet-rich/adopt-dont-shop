class AddPetsToShelters < ActiveRecord::Migration[5.2]
  def change
    add_reference :pets, :shelters, foreign_key: true, name: "shelter_id"
  end
end
