class Book < ApplicationRecord
    has_many :notes
    has_many :user_books
    has_many :users, through: :user_books

   

    validates :title, :author, :description, :imageURL, :pages, :publication_date, :genres, presence: true
    validates :pages, numericality: { only_integer: true, greater_than: 0 }
  end
  

