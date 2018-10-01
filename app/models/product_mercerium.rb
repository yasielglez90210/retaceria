class ProductMercerium < ApplicationRecord
  validates :article, uniqueness: true
end
