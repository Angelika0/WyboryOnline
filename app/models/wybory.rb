class Wybory < ApplicationRecord
  belongs_to :typ_wyborow, class_name: 'TypWyborow', foreign_key: 'id_typu_wyborow'
  has_many :kandydat_wybories, dependent: :destroy
  has_many :kandydats, through: :kandydat_wybories

  validates :tytul, presence: true
  validates :data_rozpoczecia, presence: true
  validates :data_zakonczenia, presence: true
  validates :max_votes, numericality: { only_integer: true, greater_than: 0 }

  scope :active, -> { where(zakonczone: false) }
  scope :completed, -> { where(zakonczone: true) }

  def self.mark_as_completed
    where("data_zakonczenia < ?", Time.current).update_all(zakonczone: true)
  end

  def aktywne?
    data_rozpoczecia <= Time.current && data_zakonczenia >= Time.current
  end

  def czas_do_zakonczenia
    czas_pozostaly = data_zakonczenia - Time.current
    if czas_pozostaly > 0
      "#{(czas_pozostaly / 1.day).to_i} dni, #{((czas_pozostaly % 1.day) / 1.hour).to_i} godzin, #{(((czas_pozostaly % 1.day) % 1.hour) / 1.minute).to_i} minut"
    else
      "Zakończone"
    end
  end
end

  