class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :comedy_club_id
      t.datetime :start_time
      t.datetime :end_time
      t.string :title

      t.timestamps
    end
  end
end
