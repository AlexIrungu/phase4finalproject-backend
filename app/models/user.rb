require 'bcrypt'
class User < ApplicationRecord

    has_many :user_books
    has_many :books, through: :user_books
    has_many :notes
    

 

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
    has_secure_password
end

