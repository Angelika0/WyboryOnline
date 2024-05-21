class WyborcaWybory < ApplicationRecord
    belongs_to :wyborca, foreign_key: :id_wyborcy
    belongs_to :wybory, foreign_key: :id_wyborow
  end
  