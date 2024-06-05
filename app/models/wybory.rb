class Wybory < ApplicationRecord
    belongs_to :typ_wyborow, class_name: 'TypWyborow', foreign_key: 'id_typu_wyborow'
    has_many :kandydat_wybories
    has_many :kandydaci, through: :kandydat_wybories, source: :kandydat
    validates :tytul, presence: true
  end
  