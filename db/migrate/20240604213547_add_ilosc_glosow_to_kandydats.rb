class AddIloscGlosowToKandydats < ActiveRecord::Migration[7.1]
  def change
    add_column :kandydats, :ilosc_glosow, :integer, default: 0
    end
end
