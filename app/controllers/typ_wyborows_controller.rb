class TypWyborowsController < ApplicationController
  # Wyświetla wszystkie typy wyborów.
  #
  # @return [void]
  def index
    @typ_wyborows = TypWyborow.all
    Rails.logger.info "Wyświetlono listę typów wyborów."
  end

  # Wyświetla szczegóły konkretnego typu wyborów.
  #
  # @return [void]
  def show
    @typ_wyborow = TypWyborow.find(params[:id])
    Rails.logger.info "Wyświetlono szczegóły typu wyborów o ID: #{@typ_wyborow.id}."
  end

  # Inicjuje nowy obiekt typu wyborów.
  #
  # @return [void]
  def new
    @typ_wyborow = TypWyborow.new
    Rails.logger.info "Inicjowano nowy obiekt typu wyborów."
  end

  # Tworzy nowy typ wyborów na podstawie podanych parametrów.
  #
  # @return [void]
  def create
    @typ_wyborow = TypWyborow.new(typ_wyborow_params)
    if @typ_wyborow.save
      Rails.logger.info "Utworzono nowy typ wyborów o ID: #{@typ_wyborow.id}."
      redirect_to @typ_wyborow
    else
      Rails.logger.warn "Nie udało się utworzyć nowego typu wyborów. Błędy: #{@typ_wyborow.errors.full_messages.join(', ')}"
      render :new
    end
  end

  # Edytuje istniejący typ wyborów.
  #
  # @return [void]
  def edit
    @typ_wyborow = TypWyborow.find(params[:id])
    Rails.logger.info "Edytowano typ wyborów o ID: #{@typ_wyborow.id}."
  end

  # Aktualizuje istniejący typ wyborów na podstawie podanych parametrów.
  #
  # @return [void]
  def update
    @typ_wyborow = TypWyborow.find(params[:id])
    if @typ_wyborow.update(typ_wyborow_params)
      Rails.logger.info "Zaktualizowano typ wyborów o ID: #{@typ_wyborow.id}."
      redirect_to @typ_wyborow
    else
      Rails.logger.warn "Nie udało się zaktualizować typu wyborów o ID: #{@typ_wyborow.id}. Błędy: #{@typ_wyborow.errors.full_messages.join(', ')}"
      render :edit
    end
  end

  # Usuwa istniejący typ wyborów.
  #
  # @return [void]
  def destroy
    @typ_wyborow = TypWyborow.find(params[:id])
    @typ_wyborow.destroy
    Rails.logger.info "Usunięto typ wyborów o ID: #{@typ_wyborow.id}."
    redirect_to typ_wyborows_path
  end

  private

  # Definiuje dozwolone parametry dla typu wyborów.
  #
  # @return [ActionController::Parameters] Zwraca dozwolone parametry.
  def typ_wyborow_params
    params.require(:typ_wyborow).permit(:typ)
  end
end
