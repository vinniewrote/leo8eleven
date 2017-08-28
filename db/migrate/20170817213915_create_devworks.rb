class CreateDevworks < ActiveRecord::Migration[5.1]
  def change
    create_table :devworks do |t|
      t.string :client
      t.text :url
      t.text :archive_link
      t.boolean :active_site
      t.string :hero

      t.timestamps
    end
  end
end
