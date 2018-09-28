class CreateHasColors < ActiveRecord::Migration[5.1]
  def change
    create_table :has_colors do |t|
      t.references :retacerium, foreign_key: true
      t.references :color, foreign_key: true

      t.timestamps
    end
  end
end
