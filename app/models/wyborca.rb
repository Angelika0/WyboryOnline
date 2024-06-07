class Wyborca < ApplicationRecord
  has_secure_password

  validates :imie, presence: true
  validates :nazwisko, presence: true
  validates :numer_tel, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true
  validates :password_confirmation, presence: true
  end
  