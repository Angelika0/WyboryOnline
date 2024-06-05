class AddTytulToWybories < ActiveRecord::Migration[7.1]
  def change
    add_column :wybories, :tytul, :string
  end
end
