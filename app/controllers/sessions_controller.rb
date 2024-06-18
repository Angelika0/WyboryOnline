class SessionsController < ApplicationController
  def new
  end

  def create
    wyborca = Wyborca.find_by(email: params[:session][:email].downcase)
    if wyborca && wyborca.authenticate(params[:session][:password])
      log_in wyborca
      redirect_to wybories_path, notice: 'Zalogowano pomyślnie.'
    else
      flash.now[:alert] = 'Nieprawidłowy email lub hasło.'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
