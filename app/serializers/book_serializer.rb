class BookSerializer < ActiveModel::Serializer
    attributes :id, :title, :author,  :description, :publication_date, :imageURL, :price, :publisher
    belongs_to :category
end