class RemoveCoverImageFromVinyls < ActiveRecord::Migration[7.0]
  def change
    remove_column :vinyls, :cover_image, :string
  end
end
