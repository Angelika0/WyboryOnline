class AddLiczbaGlosowToWyborcy < ActiveRecord::Migration[7.1]
  def change
    add_column :wyborcas, :liczba_glosow, :integer, default: 0
  end
end
