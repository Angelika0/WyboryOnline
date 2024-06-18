class TypWyborow < ApplicationRecord
    has_many :wybories, foreign_key: :id_typu_wyborow
  end
  