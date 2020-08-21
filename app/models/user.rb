class User < ApplicationRecord
    has_many :horoscopes, foreign_key: :author_id, dependent: :destroy
    has_many :user_horoscopes 
    has_many :horoscopes, through: :user_horoscopes
    validates :name, uniqueness: true
    # zodiac_reader :birthdate
end
