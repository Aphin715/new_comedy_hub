class AddImageToComedyClubs < ActiveRecord::Migration
  def change
    add_column :comedy_clubs, :image, :string
  end
end
