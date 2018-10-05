class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :name, null: false
      t.string :razon, null: false
      t.integer :phone, null: true
      t.string :email, null: true
      t.integer :cuit, null: true

      t.timestamps
    end
  end
end
