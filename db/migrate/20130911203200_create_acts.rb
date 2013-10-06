class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.integer :comedian_id
      t.integer :show_id

      t.timestamps
    end
  end
end
