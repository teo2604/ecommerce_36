class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :detail
      t.string :image
      t.references :category, foreign_key: true
      t.integer :price
      t.timestamps
      t.boolean :is_showed
    end
    add_index :products, :price
    add_index :products, :name
  end
end
