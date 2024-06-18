class KandydatWyboriesController < ApplicationController
  # Wyświetla wszystkie powiązania kandydatów z wyborami.
  #
  # @return [void]
  def index
    @kandydat_wybories = KandydatWybory.all
  end

  # Wyświetla szczegóły konkretnego powiązania kandydata z wyborami.
  #
  # @return [void]
  def show
    @kandydat_wybor = KandydatWybory.find(params[:id])
  end

  # Inicjuje nowy obiekt powiązania kandydata z wyborami.
  #
  # @return [void]
  def new
    @kandydat_wybor = KandydatWybory.new
  end

  # Tworzy nowe powiązanie kandydata z wyborami na podstawie podanych parametrów.
  #
  # @return [void]
  def create
    @kandydat_wybor = KandydatWybory.new(kandydat_wybor_params)
    if @kandydat_wybor.save
      redirect_to @kandydat_wybor
    else
      render :new
    end
  end

  # Edytuje istniejące powiązanie kandydata z wyborami.
  #
  # @return [void]
  def edit
    @kandydat_wybor = KandydatWybory.find(params[:id])
  end

  # Aktualizuje istniejące powiązanie kandydata z wyborami na podstawie podanych parametrów.
  #
  # @return [void]
  def update
    @kandydat_wybor = KandydatWybory.find(params[:id])
    if @kandydat_wybor.update(kandydat_wybor_params)
      redirect_to @kandydat_wybor
    else
      render :edit
    end
  end

  # Usuwa istniejące powiązanie kandydata z wyborami.
  #
  # @return [void]
  def destroy
    @kandydat_wybor = KandydatWybory.find(params[:id])
    @kandydat_wybor.destroy
    redirect_to kandydat_wybories_path
  end

  private

  # Definiuje dozwolone parametry dla powiązania kandydata z wyborami.
  #
  # @return [ActionController::Parameters] Zwraca dozwolone parametry.
  def kandydat_wybor_params
    params.require(:kandydat_wybor).permit(:id_kandydata, :id_wyborow, :ilosc_glosow)
  end
end
