class KandydatsController < ApplicationController
  def index
    @kandydats = Kandydat.all
  end

  def show
    @kandydat = Kandydat.find(params[:id])
  end

  def new
    @kandydat = Kandydat.new
  end

  def create
    @kandydat = Kandydat.new(kandydat_params)
    if @kandydat.save
      redirect_to @kandydat
    else
      render :new
    end
  end

  def edit
    @kandydat = Kandydat.find(params[:id])
  end

  def update
    @kandydat = Kandydat.find(params[:id])
    if @kandydat.update(kandydat_params)
      redirect_to @kandydat
    else
      render :edit
    end
  end

  def glosuj
    @kandydat = Kandydat.find(params[:id])
    @wybory = Wybory.find(params[:wybory_id])

    if @wybory.data_zakonczenia < Time.current
      redirect_to root_path, alert: 'Te wybory już się zakończyły.'
      return
    end

    @wyborca_wybory = WyborcaWybory.find_by(id_wyborcy: current_wyborca.id, id_wyborow: @wybory.id)

    if @wyborca_wybory
      @kandydat.increment!(:ilosc_glosow)
      redirect_to dziekuje_kandydat_path(@kandydat)
    else
      redirect_to root_path, alert: 'Nie masz uprawnień do głosowania.'
    end
  end
  def dziekuje
    @kandydat = Kandydat.find(params[:id])
  end

  def destroy
    @kandydat = Kandydat.find(params[:id])
    @kandydat.destroy
    redirect_to kandydats_path
  end

  private
 

  def kandydat_params
    params.require(:kandydat).permit(:partia_id, :imie, :nazwisko, :rok_urodzenia)
  end
end
