class CreateVeterinaryOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :veterinary_offices do |t|
      t.string "name"
      t.string "address"
      t.string "city"
      t.string "state"
      t.integer "max_capacity"
      t.boolean "overnight_stay"
      t.timestamps
    end
  end
end
