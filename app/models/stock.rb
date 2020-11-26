class Stock < ApplicationRecord
  belongs_to :produit

  validates :size, presence: true
  validates :quantity, presence: true
end
