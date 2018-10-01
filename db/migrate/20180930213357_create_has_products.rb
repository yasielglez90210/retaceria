class CreateHasProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :has_products do |t|
      t.references :provider, foreign_key: true
      t.references :product_mercerium, foreign_key: true

      t.timestamps
    end
  end
end
