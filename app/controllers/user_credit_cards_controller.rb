class UserCreditCardsController < ApplicationController

    def index
        user_credit_cards = UserCreditCard.all
        render json: user_credit_cards
    end
end
