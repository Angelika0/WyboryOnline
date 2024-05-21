class Wyborca < ApplicationRecord
    has_and_belongs_to_many :wybory, join_table: :wyborca_wybory, foreign_key: :id_wyborcy, association_foreign_key: :id_wyborow
  end
  