class TypWyborow < ApplicationRecord
    has_many :wybory, foreign_key: :id_typu_wyborow
  end
  