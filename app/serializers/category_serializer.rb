class CategorySerializer < ActiveModel::Serializer
    attributes :genre,  :description, :age_category
    has_many :books
  end