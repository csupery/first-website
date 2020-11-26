class AddReferenceToProduits < ActiveRecord::Migration[6.0]
  def change
    add_reference :produits, :genre, null: false, foreign_key: true
    remove_column :categories, :genre_id
  end
end
