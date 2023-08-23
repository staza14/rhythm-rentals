class AddCoordinatesToVinyls < ActiveRecord::Migration[7.0]
  def change
    add_column :vinyls, :latitude, :float
    add_column :vinyls, :longitude, :float
  end
end
