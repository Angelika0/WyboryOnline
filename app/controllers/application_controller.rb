class ApplicationController < ActionController::Base
    include SessionsHelper
    helper_method :logged_in?

    def logged_in?
      !current_wyborca.nil?
    end
  
    def current_wyborca
      @current_wyborca ||= Wyborca.find(session[:id_wyborcy]) if session[:id_wyborcy]
    end
  
    def log_in(wyborca)
      session[:id_wyborcy] = wyborca.id
    end
  
    def log_out
      session.delete(:id_wyborcy)
      @current_wyborca = nil
    end
end
