class CreateVinyls < ActiveRecord::Migration[7.0]
  def change
    create_table :vinyls do |t|
      t.string :album_title
      t.string :cover_image
      t.date :release_year
      t.string :genre
      t.string :songs
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
