class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :before_photo_url
      t.string :description
      t.integer :price
      t.string :after_photo_url

      t.timestamps null: false
    end
  end
end
