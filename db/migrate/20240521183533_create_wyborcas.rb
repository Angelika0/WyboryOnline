class CreateWyborcas < ActiveRecord::Migration[7.1]
  def change
    create_table :wyborcas do |t|
      t.string :imie
      t.string :nazwisko
      t.string :numer_tel
      t.string :email

      t.timestamps
    end
  end
end
