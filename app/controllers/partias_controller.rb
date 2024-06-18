class PartiasController < ApplicationController
  # Wyświetla wszystkie partie.
  #
  # @return [void]
  def index
    @partias = Partia.all
    Rails.logger.info "Wyświetlono listę partii."
  end

  # Wyświetla szczegóły konkretnej partii.
  #
  # @return [void]
  def show
    @partia = Partia.find(params[:id])
    Rails.logger.info "Wyświetlono szczegóły partii o ID: #{@partia.id}."
  end

  # Inicjuje nowy obiekt partii.
  #
  # @return [void]
  def new
    @partia = Partia.new
    Rails.logger.info "Inicjowano nowy obiekt partii."
  end

  # Tworzy nową partię na podstawie podanych parametrów.
  #
  # @return [void]
  def create
    @partia = Partia.new(partia_params)
    if @partia.save
      Rails.logger.info "Utworzono nową partię o ID: #{@partia.id}."
      redirect_to @partia
    else
      Rails.logger.warn "Nie udało się utworzyć nowej partii. Błędy: #{@partia.errors.full_messages.join(', ')}"
      render :new
    end
  end

  # Edytuje istniejącą partię.
  #
  # @return [void]
  def edit
    @partia = Partia.find(params[:id])
    Rails.logger.info "Edytowano partię o ID: #{@partia.id}."
  end

  # Aktualizuje istniejącą partię na podstawie podanych parametrów.
  #
  # @return [void]
  def update
    @partia = Partia.find(params[:id])
    if @partia.update(partia_params)
      Rails.logger.info "Zaktualizowano partię o ID: #{@partia.id}."
      redirect_to @partia
    else
      Rails.logger.warn "Nie udało się zaktualizować partii o ID: #{@partia.id}. Błędy: #{@partia.errors.full_messages.join(', ')}"
      render :edit
    end
  end

  # Usuwa istniejącą partię.
  #
  # @return [void]
  def destroy
    @partia = Partia.find(params[:id])
    @partia.destroy
    Rails.logger.info "Usunięto partię o ID: #{@partia.id}."
    redirect_to partias_path
  end

  private

  # Definiuje dozwolone parametry dla partii.
  #
  # @return [ActionController::Parameters] Zwraca dozwolone parametry.
  def partia_params
    params.require(:partia).permit(:nazwa)
  end
end
