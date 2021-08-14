class CreateVeterinaryOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :veterinary_offices do |t|
      t.boolean "overnight_stay"
      t.integer "max_capacity"
      t.string "name"
      t.string "address"
      t.string "city"
      t.string "state"
      t.timestamps
    end
  end
end
