class WyborcaWybory < ApplicationRecord
    belongs_to :wyborcas, foreign_key: :id_wyborcy
    belongs_to :wybories, foreign_key: :id_wyborow
  end
  