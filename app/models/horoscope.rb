class Horoscope < ApplicationRecord
    belongs_to :author, class_name: 'User', foreign_key: :author_id, dependent: :destroy
    has_many :user_horoscopes
    has_many :users, through: :user_horoscopes
end
