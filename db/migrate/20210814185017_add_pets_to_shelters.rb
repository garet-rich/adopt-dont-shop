class AddPetsToShelters < ActiveRecord::Migration[5.2]
  def change
    add_reference :pets, :shelters, index: true, foreign_key: true
  end
end