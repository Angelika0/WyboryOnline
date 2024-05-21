class CreateKandydatWybories < ActiveRecord::Migration[7.1]
  def change
    create_table :kandydat_wybories do |t|
      t.integer :id_kandydata
      t.integer :id_wyborow
      t.integer :ilosc_glosow

      t.timestamps
    end
  end
end
