json.extract! produit, :id, :nom, :description, :reference, :prix, :couleur, :quantite, :marque_id, :category_id, :created_at, :updated_at
json.url produit_url(produit, format: :json)
