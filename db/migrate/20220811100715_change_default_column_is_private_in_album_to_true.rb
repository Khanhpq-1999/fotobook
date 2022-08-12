class ChangeDefaultColumnIsPrivateInAlbumToTrue < ActiveRecord::Migration[7.0]
  def up
    change_column_default :albums, :is_private, false
  end
  def down
    change_column_default :albums, :is_private, nil
  end
end
