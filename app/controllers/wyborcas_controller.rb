class WyborcasController < ApplicationController
  def index
    @wyborcy = Wyborca.all
  end

  def show
    @wyborca = Wyborca.find(params[:id])
  end

  def new
    @wyborca = Wyborca.new
  end

  def create
    @wyborca = Wyborca.new(wyborca_params)
    if @wyborca.save
      # UserMailer.registration_confirmation(@wyborca).deliver_now
      redirect_to root_path, notice: 'Konto zostało założone pomyślnie.'
    else
      render :new
    end
  end

  def edit
    @wyborca = Wyborca.find(params[:id])
  end

  def update
    @wyborca = Wyborca.find(params[:id])
    if @wyborca.update(wyborca_params)
      redirect_to @wyborca
    else
      render :edit
    end
  end

  def destroy
    @wyborca = Wyborca.find(params[:id])
    @wyborca.destroy
    redirect_to wyborcas_path
  end

  private

  def wyborca_params
    params.require(:wyborca).permit(:imie, :nazwisko, :numer_tel, :email, :password, :password_confirmation)
  end
end
