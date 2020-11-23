class AddNewColumnToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :statut_order, :integer
    add_column :orders, :type_livraison, :integer
    remove_column :orders, :type_de_livraison
    remove_column :orders, :statut
  end
end
