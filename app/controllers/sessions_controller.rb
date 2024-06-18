class SessionsController < ApplicationController
  # Wyświetla formularz logowania.
  #
  # @return [void]
  def new
    # Dodanie logowania dla akcji new
    Rails.logger.info "Wyświetlono formularz logowania."
  end

  # Tworzy nową sesję (loguje użytkownika).
  #
  # @return [void]
  def create
    wyborca = Wyborca.find_by(email: params[:session][:email].downcase)
    if wyborca && wyborca.authenticate(params[:session][:password])
      log_in wyborca
      Rails.logger.info "Użytkownik #{wyborca.email} zalogował się pomyślnie."
      redirect_to wybories_path, notice: 'Zalogowano pomyślnie.'
    else
      flash.now[:alert] = 'Nieprawidłowy email lub hasło.'
      Rails.logger.warn "Nieudana próba logowania z emailem: #{params[:session][:email]}"
      render 'new'
    end
  end

  # Niszczy istniejącą sesję (wylogowuje użytkownika).
  #
  # @return [void]
  def destroy
    if logged_in?
      log_out
      Rails.logger.info "Użytkownik wylogował się pomyślnie."
    else
      Rails.logger.warn "Próba wylogowania, gdy użytkownik nie był zalogowany."
    end
    redirect_to root_url
  end
end
