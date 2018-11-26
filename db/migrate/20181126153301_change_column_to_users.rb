class ChangeColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :portfolio, :string, array: true, default: []
    add_column :users, :portfolio, :json
  end
end
