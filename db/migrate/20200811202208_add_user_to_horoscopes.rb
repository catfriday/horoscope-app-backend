class AddUserToHoroscopes < ActiveRecord::Migration[6.0]
  def change
    add_reference :horoscopes, :user, null: false, foreign_key: true
  end
end
