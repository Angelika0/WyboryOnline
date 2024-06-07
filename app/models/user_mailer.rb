class UserMailer < ActionMailer::Base
    default from: 'wyboryonilineprojket2@gmail.com'
  
    def welcome_email(wyborca)
      @wyborca = wyborca
      @url  = 'http://localhost:3000' # Zastąp tym rzeczywistym adresem URL aplikacji
      mail(to: @wyborca.email, subject: 'Welcome to My Awesome Site')
    end
  end
  