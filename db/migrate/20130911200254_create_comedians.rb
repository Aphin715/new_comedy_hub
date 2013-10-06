class CreateComedians < ActiveRecord::Migration
  def change
    create_table :comedians do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.text :bio
      t.string :youtube_url

      t.timestamps
    end
  end
end
