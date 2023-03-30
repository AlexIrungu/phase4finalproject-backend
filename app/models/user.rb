class User < ApplicationRecord
    # ...
  
    validates :first_name, presence: true, uniqueness: true
    validates :last_name, presence: true, uniqueness: true
    validates :password_digest, presence: true, length: { minimum: 8 }
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    
  
    # ...These validations ensure that the username, password, email, first name, and last name are all present and meet certain requirements
    # (e.g. uniqueness, minimum length, and email format). These validations help ensure the data being saved to the database is 
    #accurate and meets the application's standards.
  end
  