class Provider < ApplicationRecord
  has_many :has_products
  has_many :product_merceriums, through: :has_products
  validates :name, presence: { message: "Es necesario el nombre del proveedor" }
  validates :razon, presence: { message: "Es necesario la razon del proveedor" }
  validates :phone,presence: false, allow_blank: true, numericality: { only_integer: true , message: "El teléfono debe tener solo números"}
  validates :cuit,presence: false,  allow_blank: true,numericality: { only_integer: true , message: "El CUIT debe tener solo números"}
  validates :email,presence: false,  allow_blank: true,format: { :with => Devise::email_regexp, message: "El correo no tiene el formato correcto" }

  def self.active
    Provider.where(is_delete: false).order(razon: :asc)
  end
end
