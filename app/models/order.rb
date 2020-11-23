class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy

  enum statut_order: STATUT_ORDER
  enum type_livraison: TYPE_LIVRAISON
  enum statut_livraison: STATUT_LIVRAISON

end
