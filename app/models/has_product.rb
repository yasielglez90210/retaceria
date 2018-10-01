class HasProduct < ApplicationRecord
  belongs_to :provider
  belongs_to :product_mercerium
end
