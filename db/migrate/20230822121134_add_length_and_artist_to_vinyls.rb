class AddLengthAndArtistToVinyls < ActiveRecord::Migration[7.0]
  def change
    add_column :vinyls, :length, :integer
    add_column :vinyls, :artist, :string
  end
end
