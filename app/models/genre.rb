class Genre < ApplicationRecord
  has_many :produits, dependent: :destroy
end
