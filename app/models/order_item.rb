class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :produit

  enum status_order_item: STATUS_ORDER_ITEM

  validates :quantite, presence: true
end
