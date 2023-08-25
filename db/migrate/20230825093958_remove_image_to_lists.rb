class RemoveImageToLists < ActiveRecord::Migration[7.0]
  def change
    remove_column :lists, :image, :string
  end
end
