class AddMonetizeToPrices < ActiveRecord::Migration[6.0]
  def change
    add_monetize :produits, :price
    add_monetize :ventes, :price
    add_monetize :orders, :total
    remove_column :produits, :price
    remove_column :ventes, :price
    remove_column :orders, :total
  end
end
