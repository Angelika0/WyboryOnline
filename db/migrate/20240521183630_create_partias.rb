class CreatePartias < ActiveRecord::Migration[6.0]
  def change
    create_table :partias do |t|
      t.string :nazwa
      # inne pola dla partii
      t.timestamps
    end
  end
end
