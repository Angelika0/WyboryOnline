class KandydatWybory < ApplicationRecord
    belongs_to :kandydat, foreign_key: :id_kandydata
    belongs_to :wybory, foreign_key: :id_wyborow
  end
  