class Produit < ApplicationRecord
  belongs_to :marque
  belongs_to :category
  has_many :order_items, dependent: :destroy

  enum genre: GENRE_PRODUITS
end
