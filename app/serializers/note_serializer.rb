class NoteSerializer < ActiveModel::Serializer
    attributes :content, :user_id, :book_id
end