class UserBook < ApplicationRecord

    validates :user_id, presence: true
    validates :book_id, presence: true, uniqueness: { scope: :user_id }

end
#validates :username, presence: true: This validates that the username attribute is present 
#validates :username, uniqueness: true: This ensures that the username attribute is unique across all User records in the database.
#This validates that the password attribute is present (not blank) when creating a User record, and that it has a minimum length of 6 characters.