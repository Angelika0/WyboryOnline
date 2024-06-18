class ApplicationController < ActionController::Base
  include SessionsHelper
  helper_method :logged_in?

  # Sprawdza, czy użytkownik jest zalogowany.
  #
  # @return [Boolean] Zwraca true, jeśli użytkownik jest zalogowany, w przeciwnym razie false.
  def logged_in?
    !current_wyborca.nil?
  end

  # Pobiera obecnie zalogowanego wyborcę, jeśli istnieje.
  #
  # @return [Wyborca, nil] Zwraca obiekt Wyborcy, jeśli jest zalogowany, w przeciwnym razie nil.
  def current_wyborca
    begin
      @current_wyborca ||= Wyborca.find(session[:id_wyborcy]) if session[:id_wyborcy]
    rescue ActiveRecord::RecordNotFound
      session[:id_wyborcy] = nil
      @current_wyborca = nil
    end
  end

  # Loguje użytkownika.
  #
  # @param [Wyborca] wyborca Obiekt wyborcy, który ma zostać zalogowany.
  # @return [void]
  def log_in(wyborca)
    session[:id_wyborcy] = wyborca.id
  end

  # Wylogowuje użytkownika.
  #
  # @return [void]
  def log_out
    session.delete(:id_wyborcy)
    @current_wyborca = nil
  end
end
