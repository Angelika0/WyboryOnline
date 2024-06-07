class UserMailer < ApplicationMailer
  default from: 'wyboryonlineprojekt2@gmail.com'

  def registration_confirmation(wyborca)
    @wyborca = wyborca
    mail(to: @wyborca.email, subject: 'Potwierdzenie rejestracji')
  end
end
