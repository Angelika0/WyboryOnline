class TypWyborow < ApplicationRecord
    has_many :wybories, class_name: 'Wybory', foreign_key: :id_typu_wyborow
  end
  