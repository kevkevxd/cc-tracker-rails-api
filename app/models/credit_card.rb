class CreditCard < ApplicationRecord
    belongs_to :user
    has_many :cc_perks
    has_many :perks, through: :cc_perks
end