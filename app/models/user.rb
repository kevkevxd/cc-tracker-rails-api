class User < ApplicationRecord
    has_many :credit_cards
    has_many :perks, through: :credit_cards

end
