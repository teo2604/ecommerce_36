class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.text :content
      t.references :product, foreign_key: true
      t.integer :parent_cmt_id, null: false
      t.timestamps
    end
  end
end
