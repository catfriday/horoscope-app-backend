class UserHoroscopesController < ApplicationController
    
    def new
        user_horoscope = UserHoroscope.new(user_id: params[:user_id], horoscope_id: params[:horoscope_id])
        render json: user_horoscope
    end
    
    def create
        # user_horoscope = UserHoroscope.create(uh_params)
        user_horoscope = UserHoroscope.new(user_id: params[:user_id], horoscope_id: params[:horoscope_id])
        user_horoscope.save
  
        render json: user_horoscope
         
    end

    # private

    # def uh_params
    #     params.require(:user_horoscope).permit(:user_id, :horoscope_id)
    # end
end
