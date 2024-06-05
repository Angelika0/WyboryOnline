class RenameIdPartiiToPartiaId < ActiveRecord::Migration[7.1]
  def change
    rename_column :kandydats, :id_partii, :partia_id 
  end
end
