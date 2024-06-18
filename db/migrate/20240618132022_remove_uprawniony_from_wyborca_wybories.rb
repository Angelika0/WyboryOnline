class RemoveUprawnionyFromWyborcaWybories < ActiveRecord::Migration[7.1]
  def change
    remove_column :wyborca_wybories, :uprawniony, :boolean
  end
end
