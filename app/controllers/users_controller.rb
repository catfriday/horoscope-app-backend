class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users 
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def login
        user = User.find_by(name: params[:name])
        render json: user
    end


    def new
        user = User.new(user_params)
        render json: user
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :birthdate)
    end
end
