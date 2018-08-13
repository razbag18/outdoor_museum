class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.float :latitude
      t.float :longitude
      t.string :street_name
      t.string :title
      t.string :artist
      t.text :img_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
