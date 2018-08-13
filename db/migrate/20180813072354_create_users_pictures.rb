class CreateUsersPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :users_pictures do |t|
      t.references :user, foreign_key: true
      t.references :picture, foreign_key: true
      t.boolean :visited
      t.boolean :isfav
      t.integer :rating

      t.timestamps
    end
  end
end
