class Addssupplieridcolumn < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :supplierid, :integer 
  end
end
