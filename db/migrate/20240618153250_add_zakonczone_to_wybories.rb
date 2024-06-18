class AddZakonczoneToWybories < ActiveRecord::Migration[7.1]
  def change
    add_column :wybories, :zakonczone, :boolean
  end
end
