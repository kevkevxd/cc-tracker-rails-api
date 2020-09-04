class UserPerk < ApplicationRecord
    belongs_to :user
    belongs_to :perk
end
