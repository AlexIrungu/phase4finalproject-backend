class UserSerializer < ActiveModel::Serializer
    attributes :email, :password_digest, :first_name, :last_name
end