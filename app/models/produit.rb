class Produit < ApplicationRecord
  belongs_to :marque
  belongs_to :category
  belongs_to :genre
  belongs_to :couleur
  has_many :order_items, dependent: :destroy
  has_many :stocks, dependent: :destroy
  has_many :ventes, dependent: :destroy
  has_many_attached :photos
end
