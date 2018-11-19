class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :artisan, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :birtdate, :datetime
    add_column :users, :photo, :string
    add_column :users, :specialty, :string
    add_column :users, :company, :string
    add_column :users, :siret, :string
    add_column :users, :realisations, :string
  end
end
