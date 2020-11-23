class AddColumnToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :statut_order, :integer
    remove_column :order_items, :prix
  end
end
