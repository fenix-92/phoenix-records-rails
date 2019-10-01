class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :artist, foreign_key: true
      t.string :title
      t.string :discogsid
      t.integer :year
      t.references :country, foreign_key: true
      t.references :media_grading, foreign_key: true
      t.references :sleeve_grading, foreign_key: true
      t.boolean :featured
      t.boolean :gatefold
      t.boolean :misprint
      t.boolean :original_inner
      t.boolean :colored
      t.string :hex_color
      t.boolean :first_press
      t.string :notes

      t.timestamps
    end
  end
end
