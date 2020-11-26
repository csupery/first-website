class Produit < ApplicationRecord
  belongs_to :marque
  belongs_to :category
  belongs_to :couleur
  belongs_to :genre
  has_many :stocks, dependent: :destroy
  has_many :order_items, dependent: :destroy
  has_many :ventes, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :reference, presence: true
  validates :price, presence: true
end
