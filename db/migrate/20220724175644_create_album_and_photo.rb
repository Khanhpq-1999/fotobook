class CreateAlbumAndPhoto < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title, limit: 140
      t.string :description, limit: 300
      t.boolean :status
      t.timestamps
      t.reference :users
    end

    create_table :photos do |t|
      t.string :url, limit: 255
      t.string :title, limit: 140
      t.string :description, limit: 300
      t.boolean :status
      t.belongs_to :albums
      t.reference :users
      t.timestamps
    end
  end
end
