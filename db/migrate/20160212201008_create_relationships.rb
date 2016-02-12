class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :website_id
      t.boolean :productive

      t.timestamps 
    end
  end
end
