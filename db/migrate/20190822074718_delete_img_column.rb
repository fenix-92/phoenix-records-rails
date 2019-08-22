class DeleteImgColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :image
  end
end
