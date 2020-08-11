class CreateUserHoroscopes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_horoscopes do |t|
      t.integer :user_id
      t.integer :horoscope_id

      t.timestamps
    end
  end
end
