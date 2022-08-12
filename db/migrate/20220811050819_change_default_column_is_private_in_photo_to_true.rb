class ChangeDefaultColumnIsPrivateInPhotoToTrue < ActiveRecord::Migration[7.0]
  def up
    change_column_default :photos, :is_private, false
  end
  def down
    change_column_default :photos, :is_private, nil
  end
end
