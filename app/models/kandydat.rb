class Kandydat < ApplicationRecord
  belongs_to :partia
  has_many :kandydat_wybories, dependent: :destroy
  has_many :wybories, through: :kandydat_wybories

  # Walidacje i inne metody
end
