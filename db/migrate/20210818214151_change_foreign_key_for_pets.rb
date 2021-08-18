class ChangeForeignKeyForPets < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :shelters_id, :shelter_id
  end
end
