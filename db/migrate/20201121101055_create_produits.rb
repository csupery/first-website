class CreateProduits < ActiveRecord::Migration[6.0]
  def change
    create_table :produits do |t|
      t.string :nom
      t.string :description
      t.string :reference
      t.string :prix
      t.string :couleur
      t.integer :quantite
      t.references :marque, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
