class CreateKandydats < ActiveRecord::Migration[7.1]
  def change
    create_table :kandydats do |t|
      t.integer :partia_id
      t.string :imie
      t.string :nazwisko
      t.integer :rok_urodzenia

      t.timestamps
    end
  end
end
