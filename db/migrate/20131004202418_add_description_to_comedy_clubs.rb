class AddDescriptionToComedyClubs < ActiveRecord::Migration
  def change
    add_column :comedy_clubs, :description, :text
  end
end
