class AddPriceToVinyl < ActiveRecord::Migration[7.0]
  def change
    add_column :vinyls, :price, :float
  end
end
