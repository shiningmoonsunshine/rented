class AddTitleToClothes < ActiveRecord::Migration[7.0]
  def change
    add_column :clothes, :title, :string
  end
end
