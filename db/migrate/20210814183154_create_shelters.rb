class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.boolean "foster_program"
      t.string "name"
      t.string "address"
      t.string "city"
      t.string "state"
      t.timestamps
    end
  end
end
