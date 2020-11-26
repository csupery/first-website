class ChangeDescriptionColomnToTextAgain < ActiveRecord::Migration[6.0]
  def change
    change_column :produits, :description, :text
  end
end
