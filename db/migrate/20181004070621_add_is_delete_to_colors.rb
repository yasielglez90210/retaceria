class AddIsDeleteToColors < ActiveRecord::Migration[5.1]
  def change
    add_column :colors, :is_delete, :boolean ,:default => false
    add_column :categories, :is_delete, :boolean ,:default => false
    add_column :providers, :is_delete, :boolean ,:default => false
  end
end
