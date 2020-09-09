class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = find_user
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def update
        user = find_user
        user.update(user_params)
        render json: user
    end

    private

    def find_user
        user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :accrued_points, :accrued_cash, :point_expirations)  
    end
end
