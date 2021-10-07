class User < ApplicationRecord
    has_many :votes
    has_many :proposals, through: :votes

    validates :username, presence: true, uniqueness: true
    has_secure_password
end
