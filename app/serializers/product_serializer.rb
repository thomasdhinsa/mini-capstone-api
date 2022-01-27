class ProductSerializer < ActiveModel::Serializer
    attributes :id, :price, :ingredients #:is_discounted, :tax, :total

    belongs_to :supplier
    has_many :categories
end
