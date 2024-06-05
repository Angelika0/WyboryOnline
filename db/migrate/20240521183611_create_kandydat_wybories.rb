class CreateKandydatWybories < ActiveRecord::Migration[7.1]
  def change
    create_table :kandydat_wybories do |t|
      t.references :kandydat, null: false, foreign_key: true
      t.references :wybory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
