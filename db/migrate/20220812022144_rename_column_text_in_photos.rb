class RenameColumnTextInPhotos < ActiveRecord::Migration[7.0]
  def change
    rename_column :photos, :text, :description
  end
end
