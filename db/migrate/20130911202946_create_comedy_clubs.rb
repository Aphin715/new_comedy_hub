class CreateComedyClubs < ActiveRecord::Migration
  def change
    create_table :comedy_clubs do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
