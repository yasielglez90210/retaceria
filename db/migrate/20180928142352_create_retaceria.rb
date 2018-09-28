class CreateRetaceria < ActiveRecord::Migration[5.1]
  def change
    create_table :retaceria do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.integer :cost
      t.integer :rinde

      t.timestamps
    end
  end
end
