class Addingredientstoproducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :description, :ingredients
   end
end
 