class ChangeNameColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :genres, :nom, :string
    rename_column :couleurs, :nom, :name
    rename_column :categories, :nom, :name
    rename_column :marques, :nom, :name
    rename_column :order_items, :quantite, :quantity
    rename_column :order_items, :statut_order, :status_order_items
    rename_column :orders, :statut_livraison, :status_delivery
    rename_column :orders, :type_livraison, :type_delivery
    rename_column :orders, :statut_order, :status_order
    rename_column :produits, :nom, :name
    rename_column :produits, :prix, :price
    rename_column :stocks, :quantite, :quantity
    rename_column :stocks, :taille, :size
    rename_column :ventes, :prix, :price
    rename_column :ventes, :statut_vente, :status_vente
  end
end
