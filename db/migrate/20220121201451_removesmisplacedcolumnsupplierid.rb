class Removesmisplacedcolumnsupplierid < ActiveRecord::Migration[7.0]
  def change
    remove_column :suppliers, :supplierid, :integer
  end
end
