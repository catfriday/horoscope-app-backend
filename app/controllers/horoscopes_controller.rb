class HoroscopesController < ApplicationController

    def index
        horoscopes = Horoscope.all
        render json: horoscopes
    end

    def show
        horoscope = Horoscope.find_by(id: params[:id])
        render json: horoscopes
    end


end
