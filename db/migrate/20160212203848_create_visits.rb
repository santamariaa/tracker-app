class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :relationship_id
      t.datetime :checked_in
      t.datetime :checked_out

      t.timestamps null: false
    end
  end
end
