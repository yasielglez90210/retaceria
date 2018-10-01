class CreateProductMerceria < ActiveRecord::Migration[5.1]
  def change
    create_table :product_merceria do |t|
      t.string :name, null: false, default: ""
      t.string :article
      t.integer :cost
      t.integer :price, null: false, default: 10
      t.integer :initial_stock, null: false, default: 10
      t.integer :minimum
      t.integer :current_stock

      t.timestamps
    end
  end
end
