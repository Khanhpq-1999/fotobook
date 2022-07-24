class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name, limit:25
      t.string :last_name, limit:25
      t.string :email, limit:255
      t.string :password, limit:65
      t.boolean :active,  default: true 
      t.boolean :is_admin, default: false
      t.timestamps
    end
  end
end
