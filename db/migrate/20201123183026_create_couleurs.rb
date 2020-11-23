class CreateCouleurs < ActiveRecord::Migration[6.0]
  def change
    create_table :couleurs do |t|
      t.string :nom

      t.timestamps
    end
  end
end
