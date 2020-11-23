class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :produit

  enum statut_order_item: STATUT_ORDER_ITEM
end
