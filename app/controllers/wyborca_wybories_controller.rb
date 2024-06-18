class WyborcaWyboriesController < ApplicationController
  # Wyświetla wszystkie powiązania wyborców z wyborami.
  #
  # @return [void]
  def index
    @wyborca_wybories = WyborcaWybory.all
    Rails.logger.info "Wyświetlono listę powiązań wyborców z wyborami."
  end

  # Wyświetla szczegóły konkretnego powiązania wyborcy z wyborami.
  #
  # @return [void]
  def show
    @wyborca_wybor = WyborcaWybory.find(params[:id])
    Rails.logger.info "Wyświetlono szczegóły powiązania wyborcy z wyborami o ID: #{@wyborca_wybor.id}."
  end

  # Inicjuje nowy obiekt powiązania wyborcy z wyborami.
  #
  # @return [void]
  def new
    @wyborca_wybor = WyborcaWybory.new
    Rails.logger.info "Inicjowano nowy obiekt powiązania wyborcy z wyborami."
  end

  # Tworzy nowe powiązanie wyborcy z wyborami na podstawie podanych parametrów.
  #
  # @return [void]
  def create
    @wyborca_wybor = WyborcaWybory.new(wyborca_wybor_params)
    if @wyborca_wybor.save
      Rails.logger.info "Utworzono nowe powiązanie wyborcy z wyborami o ID: #{@wyborca_wybor.id}."
      redirect_to @wyborca_wybor
    else
      Rails.logger.warn "Nie udało się utworzyć nowego powiązania wyborcy z wyborami. Błędy: #{@wyborca_wybor.errors.full_messages.join(', ')}"
      render :new
    end
  end

  # Edytuje istniejące powiązanie wyborcy z wyborami.
  #
  # @return [void]
  def edit
    @wyborca_wybor = WyborcaWybory.find(params[:id])
    Rails.logger.info "Edytowano powiązanie wyborcy z wyborami o ID: #{@wyborca_wybor.id}."
  end

  # Aktualizuje istniejące powiązanie wyborcy z wyborami na podstawie podanych parametrów.
  #
  # @return [void]
  def update
    @wyborca_wybor = WyborcaWybory.find(params[:id])
    if @wyborca_wybor.update(wyborca_wybor_params)
      Rails.logger.info "Zaktualizowano powiązanie wyborcy z wyborami o ID: #{@wyborca_wybor.id}."
      redirect_to @wyborca_wybor
    else
      Rails.logger.warn "Nie udało się zaktualizować powiązania wyborcy z wyborami o ID: #{@wyborca_wybor.id}. Błędy: #{@wyborca_wybor.errors.full_messages.join(', ')}"
      render :edit
    end
  end

  # Usuwa istniejące powiązanie wyborcy z wyborami.
  #
  # @return [void]
  def destroy
    @wyborca_wybor = WyborcaWybory.find(params[:id])
    @wyborca_wybor.destroy
    Rails.logger.info "Usunięto powiązanie wyborcy z wyborami o ID: #{@wyborca_wybor.id}."
    redirect_to wyborca_wybories_path
  end

  private

  # Definiuje dozwolone parametry dla powiązania wyborcy z wyborami.
  #
  # @return [ActionController::Parameters] Zwraca dozwolone parametry.
  def wyborca_wybor_params
    params.require(:wyborca_wybor).permit(:id_wyborcy, :id_wyborow)
  end
end
