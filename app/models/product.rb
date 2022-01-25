class Product < ApplicationRecord

    validates :name, presence: true, uniqueness: true
    validates :ingredients, presence: true, length: { maximum: 150 }
    validates :inventory, presence: true, numericality: true 
    validates :price, numericality: { greater_than: 0 }

  def supplier
    Supplier.find(supplier_id)
  end 

  def is_discounted?
    price < 10 
   end

  def tax
    price * 0.09
  end 

  def total
    price + tax
  end
end 



#Product Model Validations
# name presense/uniqueness
# price presence/numericality (not a negative number)
# description length range ((with)in)
# quantity presence 
