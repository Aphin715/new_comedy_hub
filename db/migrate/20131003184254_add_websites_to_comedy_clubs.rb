class AddWebsitesToComedyClubs < ActiveRecord::Migration
  def change
    add_column :comedy_clubs, :website, :string
  end
end
