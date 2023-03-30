class Book < ApplicationRecord
    validates :title, :author, :description, :imageURL, :pages, :publication_date, :genres, presence: true
    validates :pages, numericality: { only_integer: true, greater_than: 0 }
  end
  