class Wybory < ApplicationRecord
    belongs_to :typ_wyborow, class_name: 'TypWyborow', foreign_key: 'id_typu_wyborow'
    has_many :kandydat_wybories
    has_many :kandydaci, through: :kandydat_wybories, source: :kandydat
    validates :tytul, presence: true
    def czas_do_zakonczenia
      czas_pozostaly = data_zakonczenia - Time.current
      if czas_pozostaly > 0
        Time.at(czas_pozostaly).utc.strftime("%H:%M:%S")
      else
        "Wybory zakończone"
      end
    end
  end
  