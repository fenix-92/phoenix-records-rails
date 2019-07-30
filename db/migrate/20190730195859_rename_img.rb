class RenameImg < ActiveRecord::Migration[5.2]
  def change
    rename_column :artists, :img, :image
  end
end
