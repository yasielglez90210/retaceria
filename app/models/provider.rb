class Provider < ApplicationRecord
  has_many :has_products
  has_many :product_merceriums, through: :has_products
end
