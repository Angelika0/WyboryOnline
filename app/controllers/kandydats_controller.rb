class KandydatsController < ApplicationController
  # Wyświetla wszystkie kandydatów.
  #
  # @return [void]
  def index
    @kandydats = Kandydat.all
  end

  # Wyświetla szczegóły konkretnego kandydata.
  #
  # @return [void]
  def show
    @kandydat = Kandydat.find(params[:id])
  end

  # Inicjuje nowy obiekt kandydata.
  #
  # @return [void]
  def new
    @kandydat = Kandydat.new
  end

  # Tworzy nowego kandydata na podstawie podanych parametrów.
  #
  # @return [void]
  def create
    @kandydat = Kandydat.new(kandydat_params)
    if @kandydat.save
      redirect_to @kandydat
    else
      render :new
    end
  end

  # Edytuje istniejącego kandydata.
  #
  # @return [void]
  def edit
    @kandydat = Kandydat.find(params[:id])
  end

  # Aktualizuje istniejącego kandydata na podstawie podanych parametrów.
  #
  # @return [void]
  def update
    @kandydat = Kandydat.find(params[:id])
    if @kandydat.update(kandydat_params)
      redirect_to @kandydat
    else
      render :edit
    end
  end

  # Obsługuje głosowanie na kandydata.
  #
  # @return [void]
  def glosuj
    @kandydat = Kandydat.find(params[:id])
    @wybory = Wybory.find(params[:wybory_id])
  
    if current_wyborca.liczba_glosow < @wybory.max_votes
      @kandydat.increment!(:ilosc_glosow)
      current_wyborca.increment!(:liczba_glosow)
      redirect_to @wybory, notice: 'Głos został oddany.'
    else
      redirect_to @wybory, alert: 'Nie możesz oddać więcej głosów w tych wyborach.'
    end
  end

  # Wyświetla stronę podziękowania po oddaniu głosu.
  #
  # @return [void]
  def dziekuje
    @kandydat = Kandydat.find(params[:id])
  end

  # Usuwa istniejącego kandydata.
  #
  # @return [void]
  def destroy
    @kandydat = Kandydat.find(params[:id])
    @kandydat.destroy
    redirect_to kandydats_path
  end

  private

  # Definiuje dozwolone parametry dla kandydata.
  #
  # @return [ActionController::Parameters] Zwraca dozwolone parametry.
  def kandydat_params
    params.require(:kandydat).permit(:partia_id, :imie, :nazwisko, :rok_urodzenia)
  end
end
