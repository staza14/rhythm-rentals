class AddAddressToVinyl < ActiveRecord::Migration[7.0]
  def change
    add_column :vinyls, :pickup_adress, :string
  end
end
