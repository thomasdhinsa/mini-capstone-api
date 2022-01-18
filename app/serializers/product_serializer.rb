class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :image_url, :description, :is_discounted, :tax, :total
end
