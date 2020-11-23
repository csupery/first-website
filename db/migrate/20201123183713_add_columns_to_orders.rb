class AddColumnsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :type_de_livraison, :integer
    add_column :orders, :statut_livraison, :integer
  end
end
