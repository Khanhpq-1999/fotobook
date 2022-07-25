class CreateAlbumAndPhoto < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title, limit:140
      t.string :description, limit:300
      t.string :status, limit:15
      t.timestamps
    end

    add_reference :albums, :users

    create_table :photos do |t|
      t.string :url, limit:255
      t.string :title, limit:140
      t.string :description, limit:300
      t.string :status, limit:15
      t.belongs_to :albums
      t.timestamps
    end

    add_reference :photos, :users
    
  end
end
