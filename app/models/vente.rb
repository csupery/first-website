class Vente < ApplicationRecord
  belongs_to :produit
  belongs_to :user

  enum status_vente: STATUS_VENTE

  monetize :price_cents
end
