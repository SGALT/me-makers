class ChangeColumnToPrestations < ActiveRecord::Migration[5.2]
  def change
    remove_column :prestations, :state
    add_column :prestations, :state, :integer
  end
end
