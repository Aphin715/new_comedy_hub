class AddFavoriteComedianToUsers < ActiveRecord::Migration
  def change
    add_column :users, :favorite_comedian, :string
  end
end
