class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :produit, null: false, foreign_key: true
      t.integer :quantite
      t.integer :prix

      t.timestamps
    end
  end
end
