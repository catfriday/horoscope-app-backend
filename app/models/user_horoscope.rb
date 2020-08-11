class UserHoroscope < ApplicationRecord
    belongs_to :user, dependent: :destroy
    belongs_to :horoscope
end
