class RemovePictureFromClothes < ActiveRecord::Migration[7.0]
  def change
    remove_column :clothes, :picture, :binary
  end
end
