module SessionsHelper
  def log_in(wyborca)
    session[:wyborca_id] = wyborca.id
  end

  def current_wyborca
    @current_wyborca ||= Wyborca.find_by(id: session[:wyborca_id])
  end

  def logged_in?
    !current_wyborca.nil?
  end

  def log_out
    session.delete(:wyborca_id)
    @current_wyborca = nil
  end
end
