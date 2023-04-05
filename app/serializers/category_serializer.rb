class CategorySerializer < ActiveModel::Serializer
  attributes :id, :genre, :description
  has_many :books do
    link(:related) { category_books_url(object) }
  end
end
