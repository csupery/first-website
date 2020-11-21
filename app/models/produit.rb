class Produit < ApplicationRecord
  belongs_to :marque
  belongs_to :category
end
