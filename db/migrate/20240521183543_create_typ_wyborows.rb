class CreateTypWyborows < ActiveRecord::Migration[7.1]
  def change
    create_table :typ_wyborows do |t|
      t.string :typ

      t.timestamps
    end
  end
end
