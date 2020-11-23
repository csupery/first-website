class AddColumnToProduits < ActiveRecord::Migration[6.0]
  def change
    remove_column :produits, :prix
    remove_column :produits, :couleur
    remove_column :produits, :quantite
    remove_column :produits, :genre
  end
end
