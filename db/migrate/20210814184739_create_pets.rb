class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.boolean "adoptable"
      t.integer "age"
      t.string "color"
      t.string "breed"
      t.string "name"
      t.timestamps
    end
  end
end
