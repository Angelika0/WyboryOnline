class AddUprawnionyToWyborcaWybories < ActiveRecord::Migration[7.1]
  def change
    add_column :wyborca_wybories, :uprawniony, :boolean, default: false, null: false
    
  end
end
