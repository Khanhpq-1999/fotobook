class CreateAlbumAndPhoto < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title, limit: 140
      t.text :description, limit: 300
      t.boolean :is_private
      t.timestamps
      t.references :users, index: true
    end

    create_table :photos do |t|
      t.string :url, limit: 255
      t.string :title, limit: 140
      t.string :text, limit: 300
      t.boolean :is_private
      t.belongs_to :albums, index: true
      t.references :users, index: true
      t.timestamps
    end
  end
end
