class Kandydat < ApplicationRecord
  belongs_to :partia
  has_many :kandydat_wybories
  has_many :wybories, through: :kandydat_wybories, source: :wybory

  # Walidacje i inne metody
end
