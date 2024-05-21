class Wybory < ApplicationRecord
    belongs_to :typ_wyborow, foreign_key: :id_typu_wyborow
    has_and_belongs_to_many :wyborcy, join_table: :wyborca_wybory, foreign_key: :id_wyborow, association_foreign_key: :id_wyborcy
    has_many :kandydat_wybory, foreign_key: :id_wyborow
    has_many :kandydaci, through: :kandydat_wybory
  end
  