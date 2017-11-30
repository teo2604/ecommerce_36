class CreateSuggests < ActiveRecord::Migration[5.1]
  def change
    create_table :suggests do |t|
      t.references :user, foreign_key: true
      t.string :product_name
      t.text :detail
      t.integer :price
      t.string :image
      t.boolean :is_confirmed
      t.timestamps
    end
  end
end
