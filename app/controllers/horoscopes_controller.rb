class HoroscopesController < ApplicationController

    def index
        horoscopes = Horoscope.all
        render json: horoscopes
    end

    def show
        horoscope = Horoscope.find_by(id: params[:id])
        render json: horoscopes
    end

    def new
        horoscope = Horoscope.new(horoscope_params)
        render json: horoscope
    end

    def create  
        horoscope = Horoscope.new(horoscope_params)
        if horoscope.save
            render json: horoscope
        end
    end


    private

    def horoscope_params
        params.require(:horoscope).permit(:title, :text, :author_id)
    end
end
