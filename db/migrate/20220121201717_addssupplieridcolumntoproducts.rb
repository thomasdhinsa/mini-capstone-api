class Addssupplieridcolumntoproducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :supplierid, :integer 
  end
end
