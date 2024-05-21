class Partia < ApplicationRecord
    has_many :kandydaci, foreign_key: :id_partii
  end
  