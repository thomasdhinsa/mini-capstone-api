class ProductSerializer < ActiveModel::Serializer
    attributes :id, :price, :image_url, :ingredients #:is_discounted, :tax, :total
end
