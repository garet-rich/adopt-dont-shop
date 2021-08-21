class UpdateForeignKeyNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :veterinarians, :veterinary_offices_id, :veterinary_office_id
    rename_column :pets, :shelters_id, :shelter_id
  end
end
