class RemoveUserIdFromHoroscopes < ActiveRecord::Migration[6.0]
  def change
    remove_column :horoscopes, :user_id
  end
end
