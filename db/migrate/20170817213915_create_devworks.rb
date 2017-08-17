class CreateDevworks < ActiveRecord::Migration[5.1]
  def change
    create_table :devworks do |t|
      t.string :client
      t.text :image

      t.timestamps
    end
  end
end
