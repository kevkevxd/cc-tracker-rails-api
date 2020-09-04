class User < ApplicationRecord
    has_many :credit_cards
    has_many :user_perks
    has_many :perks, through: :user_perks
end