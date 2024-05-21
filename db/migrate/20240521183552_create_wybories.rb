class CreateWybories < ActiveRecord::Migration[7.1]
  def change
    create_table :wybories do |t|
      t.integer :id_typu_wyborow
      t.datetime :data_rozpoczecia
      t.datetime :data_zakonczenia
      t.text :kryteria_glosowania

      t.timestamps
    end
  end
end
