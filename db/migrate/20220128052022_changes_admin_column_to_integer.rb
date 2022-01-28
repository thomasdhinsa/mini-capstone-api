class ChangesAdminColumnToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :admin, :string
  end
end
