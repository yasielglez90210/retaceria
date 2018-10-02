class Provider < ApplicationRecord
  has_many :has_products
  has_many :product_merceriums, through: :has_products
  validates :phone, format: { with: /\A\d+\z/, message: "El teléfono debe tener solo números" }
  validates :cuit, format: { with: /\A\d+\z/, message: "El CUIT debe tener solo números" }

end
