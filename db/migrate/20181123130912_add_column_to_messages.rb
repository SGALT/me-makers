class AddColumnToMessages < ActiveRecord::Migration[5.2]
  def change
    change_table(:messages) do |t|
      t.references :prestations
    end
  end
end
