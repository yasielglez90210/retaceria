class Color < ApplicationRecord

  validates :name, uniqueness: true, presence: {message: "Es necesario el nombre del color"}
end
