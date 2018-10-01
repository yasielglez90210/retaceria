class CreateRetaceria < ActiveRecord::Migration[5.1]
  def change
    create_table :retaceria do |t|
      t.string :name, null: false, default: ""
      t.references :category, foreign_key: true
      t.integer :cost, null: false, default: 1
      t.integer :rinde, null: false, default: 1

      t.timestamps
    end
  end
end
