class AddImageToComedians < ActiveRecord::Migration
  def change
    add_column :comedians, :image, :string
  end
end
