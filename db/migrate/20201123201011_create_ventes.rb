class CreateVentes < ActiveRecord::Migration[6.0]
  def change
    create_table :ventes do |t|
      t.references :produit, null: false, foreign_key: true
      t.integer :prix
      t.references :user, null: false, foreign_key: true
      t.integer :statut_vente
      t.boolean :remboursement

      t.timestamps
    end
  end
end
