class AddAddressToClothes < ActiveRecord::Migration[7.0]
  def change
    add_column :clothes, :address, :string
  end
end
