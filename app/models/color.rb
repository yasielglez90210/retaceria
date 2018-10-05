class Color < ApplicationRecord
  validates :name, uniqueness: true, presence: {message: "Es necesario el nombre del color"}
  has_many :has_colors
  has_many :retaceriums, through: :has_colors
  def self.active
    Color.where(is_delete: false).order(name: :asc)
  end
end
