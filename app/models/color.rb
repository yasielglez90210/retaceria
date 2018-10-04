class Color < ApplicationRecord
  validates :name, uniqueness: true, presence: {message: "Es necesario el nombre del color"}

  def self.active
    Color.where(is_delete: false).order(name: :asc)
  end
end
