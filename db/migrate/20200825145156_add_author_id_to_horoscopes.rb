class AddAuthorIdToHoroscopes < ActiveRecord::Migration[6.0]
  def change
    add_column :horoscopes, :author_id, :integer
  end
end
