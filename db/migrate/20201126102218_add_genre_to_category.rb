class AddGenreToCategory < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :genre, null: false, foreign_key: true
  end
end
