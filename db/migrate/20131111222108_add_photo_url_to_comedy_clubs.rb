class AddPhotoUrlToComedyClubs < ActiveRecord::Migration
  def change
    add_column :comedy_clubs, :photo_url, :string
  end
end
