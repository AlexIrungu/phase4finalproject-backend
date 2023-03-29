class BookSerializer < ActiveModel::Serializer
    attributes :id, :title, :author, :pages, :description, :publication_date, :imageURL, :genres
end