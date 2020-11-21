class AddGenreToProduits < ActiveRecord::Migration[6.0]
  def change
    add_column :produits, :genre, :integer
  end
end
