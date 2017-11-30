class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :activation_digest
      t.boolean :is_admin
      t.string :remember_digest
      t.boolean :activated
      t.timestamps
    end
    add_index :users, :name
  end
end
