class AddColumnReviewsToPrestations < ActiveRecord::Migration[5.2]
  def change
    add_column :prestations, :review, :string
    add_column :prestations, :rating, :integer
  end
end
