class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.references :produit, null: false, foreign_key: true
      t.string :taille
      t.integer :quantite

      t.timestamps
    end
  end
end
