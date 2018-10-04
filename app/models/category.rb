class Category < ApplicationRecord
  validates :name, uniqueness: true,
            presence: { message: "Es necesario el nombre de la categoría" }
  has_many :retaceriums
end
