class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :website_url

      t.timestamps 
    end
  end
end
