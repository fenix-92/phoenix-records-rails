class AddImgArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :img, :string
  end
end
