class RenameUserToArtisanInPrestation < ActiveRecord::Migration[5.2]
  def change
    rename_column :prestations, :user_id, :artisan_id
  end
end
