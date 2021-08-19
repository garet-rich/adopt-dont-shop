class CreateVeterinarians < ActiveRecord::Migration[5.2]
  def change
    create_table :veterinarians do |t|
      t.string "name"
      t.integer "review_rating"
      t.string "schedule"
      t.timestamps
    end
  end
end
