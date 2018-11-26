class ChangeRealisationsForUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :realisations
    add_column :users, :portfolio, :string, array: true, default: []
  end
end
