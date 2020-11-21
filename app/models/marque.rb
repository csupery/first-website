class Marque < ApplicationRecord
  has_many :produits, dependent: :destroy
end
