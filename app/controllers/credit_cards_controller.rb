class CreditCardsController < ApplicationController
    def index
        credit_cards = CreditCard.all
        render json: credit_cards
    end

    def show
        credit_card = find_credit_card
        render json: credit_card
    end

    def create
        credit_card = CreditCard.create(credit_card_params)
        render json: credit_card
    end

    def update
        credit_card = find_credit_card
        credit_card.update(credit_card_params)
        render json: credit_card
    end

    def destroy
        credit_card = credit_card.destroy
        render json: credit_card
    end

    private

    def find_credit_card
        credit_card = CreditCard.find(param[:id])
    end

    def credit_card_params
        params.require(:credit_card).permit(:name, :is_bookedmarked, :annual_fee, :approval_date, :bonus_amount, :bonus_spend, :bonus_month_period, :percentage_earn, :earn_description, :category, :bank_name, :insurance, :price_protection, :return_protection, :extended_warranty, :travel_credit, :global_entry, :lounge_access, :notes)
    end

end