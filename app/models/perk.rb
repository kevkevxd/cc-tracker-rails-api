class Perk < ApplicationRecord
    has_many :cc_perks
    has_many :credit_cards, through: :cc_perks
    has_many :user_perks
    has_many :users, through: :user_perks
end
