class CreatePrestations < ActiveRecord::Migration[5.2]
  def change
    create_table :prestations do |t|
      t.string :title
      t.string :description
      t.string :workforce
      t.string :material
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :price
      t.string :state

      t.timestamps
    end
  end
end
