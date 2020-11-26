class ChangesInStocks < ActiveRecord::Migration[6.0]
  def change
    add_column :produits, :quantity, :integer
    remove_column :produits, :stock_id
    add_reference :stocks, :produits
  end
end
