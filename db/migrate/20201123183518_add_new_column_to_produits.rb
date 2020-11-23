class AddNewColumnToProduits < ActiveRecord::Migration[6.0]
  def change
    add_column :produits, :prix, :integer
    add_reference :produits, :genre, null: false, foreign_key: true
    add_reference :produits, :couleur, null: false, foreign_key: true
  end
end
