class Partia < ApplicationRecord
    self.table_name = "partias"
    has_many :kandydats
  end
  