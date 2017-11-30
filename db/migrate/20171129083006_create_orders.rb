class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :total_money
      t.references :user, foreign_key: true
      t.boolean :is_accept
      t.timestamps
    end
  end
end
