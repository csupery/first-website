json.extract! order_item, :id, :order_id, :produit_id, :quantite, :prix, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
