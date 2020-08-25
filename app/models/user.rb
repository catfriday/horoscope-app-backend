class User < ApplicationRecord
    has_many :written_horoscopes, foreign_key: :author_id, class_name:"Horoscope", dependent: :destroy
    has_many :user_horoscopes 
    has_many :horoscopes, through: :user_horoscopes
    validates :name, uniqueness: true
    # zodiac_reader :birthdate
end
