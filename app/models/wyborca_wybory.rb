class WyborcaWybory < ApplicationRecord
  belongs_to :wyborca, class_name: 'Wyborca', foreign_key: 'id_wyborcy'
  belongs_to :wybory, class_name: 'Wybory', foreign_key: 'id_wyborow'
  
  end
  