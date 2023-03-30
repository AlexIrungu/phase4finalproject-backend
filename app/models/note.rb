class Note < ApplicationRecord
    validates :content, presence: true, length: { maximum: 1000 }, allow_blank: true
    validates :user_id, presence: true
    validates :book_id,presence: true
end
