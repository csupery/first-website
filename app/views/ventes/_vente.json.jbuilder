json.extract! vente, :id, :produit_id, :prix, :user_id, :statut_vente, :remboursement, :created_at, :updated_at
json.url vente_url(vente, format: :json)
