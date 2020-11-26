class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy

  enum status_order: STATUS_ORDER
  enum type_delivery: TYPE_DELIVERY
  enum status_delivery: STATUS_DELIVERY

  validates :type_delivery, presence: true

  monetize :total_cents
end
