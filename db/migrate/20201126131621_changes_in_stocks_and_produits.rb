class ChangesInStocksAndProduits < ActiveRecord::Migration[6.0]
  def change
    add_reference :stocks, :produit
    remove_column :stocks, :produits_id
  end
end
