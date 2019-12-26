class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :product_explain, null: false
      t.integer :price, null: false
      t.references :product_category, null: false, foreign_key: true
      t.references :product_brand, foreign_key: true
      t.integer :product_send_day, null: false, unique:true
      t.integer :prefecture_id, null: false
      t.references :user, null: false, foreign_key: true
      t.string :transaction_status, null: false, unique:true
      t.string :product_condition, null: false, unique:true
      t.integer :product_fee, null: false, unique:true
      t.string :product_size
      t.timestamps
    end
  end
end
