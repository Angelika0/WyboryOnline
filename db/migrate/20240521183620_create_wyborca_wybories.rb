class CreateWyborcaWybories < ActiveRecord::Migration[7.1]
  def change
    create_table :wyborca_wybories do |t|
      t.integer :id_wyborcy
      t.integer :id_wyborow

      t.timestamps
    end
  end
end
