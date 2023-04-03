class Book < ApplicationRecord
    has_many :notes
    has_many :user_books
    has_many :users, through: :user_books
    belongs_to :category

   

    validates :title, :author, :description, :imageURL,  :publication_date, :publisher, presence: true
     validates :price, numericality: { only_integer: true, greater_than: 0 }
  end
  

