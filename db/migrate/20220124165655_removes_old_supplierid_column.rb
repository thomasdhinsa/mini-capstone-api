class RemovesOldSupplieridColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :supplierid, :integer
  end
end
