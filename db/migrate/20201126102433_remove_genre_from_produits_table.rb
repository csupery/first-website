class RemoveGenreFromProduitsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :produits, :genre_id
  end
end
