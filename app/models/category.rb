class Category < ApplicationRecord
  validates :name, uniqueness: true,
            presence: { message: "Es necesario el nombre de la categoría" }
  has_many :retaceriums

  def self.active
    Category.where(is_delete: false).order(name: :asc)
  end
end
