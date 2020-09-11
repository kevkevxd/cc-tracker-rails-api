class UserCreditCardsController < ApplicationController

    def index
        user_credit_cards = UserCreditCard.all
        render json: user_credit_cards
    end

    def show
        user_credit_card = find_user_credit_card
        render json: user_credit_card
    end


    def destroy
        user_credit_card = user_credit_card.destroy
        render json: user_credit_card
    end

    private
    def find_user_credit_card
        user_credit_card = UserCreditCard.find(params[:id])
    end

end
