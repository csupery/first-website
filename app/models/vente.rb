class Vente < ApplicationRecord
  belongs_to :produit
  belongs_to :user

  enum statut_vente: STATUT_VENTE

end
