class AddFirstNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :adresse, :string
    add_column :users, :telephone, :string
  end
end
