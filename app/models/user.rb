class User < ApplicationRecord
	has_many :user_credit_cards
	has_many :credit_cards, through: :user_credit_cards
end
