class CreditCard < ApplicationRecord
    has_many :perks
    belongs_to :user
end
