class ChangePrestationReferencesToMessages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :messages, :prestations
    add_reference :messages, :prestation, foreign_key: true
  end
end
