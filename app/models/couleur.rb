class Couleur < ApplicationRecord
  has_many :produits, dependent: :destroy
end
