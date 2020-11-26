class ChangesInProduitsAndStocks < ActiveRecord::Migration[6.0]
  def change
    remove_column :stocks, :produit_id
    add_reference :produits, :stock
  end
end
