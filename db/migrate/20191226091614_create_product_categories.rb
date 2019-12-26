class CreateProductCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :product_categories do |t|
      t.string :name, null: false, unique:true
      t.integer :parent_id
    end
  end
end
