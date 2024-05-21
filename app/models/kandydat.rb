class Kandydat < ApplicationRecord
    belongs_to :partia, foreign_key: :id_partii
    has_many :kandydat_wybory, foreign_key: :id_kandydata
    has_many :wybory, through: :kandydat_wybory
  end
  