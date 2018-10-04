class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :razon
      t.integer :phone
      t.string :email
      t.integer :cuit

      t.timestamps
    end
  end
end
