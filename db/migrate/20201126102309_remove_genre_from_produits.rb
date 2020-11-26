class RemoveGenreFromProduits < ActiveRecord::Migration[6.0]
  def change
    remove_column :produits, :genre
  end
end
