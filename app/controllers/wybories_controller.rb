class WyborcasController < ApplicationController
  # Wyświetla listę wszystkich wyborców.
  #
  # @return [void]
  def index
    @wyborcy = Wyborca.all
    Rails.logger.info "Wyświetlono listę wszystkich wyborców."
  end

  # Wyświetla szczegóły konkretnego wyborcy.
  #
  # @return [void]
  def show
    @wyborca = Wyborca.find(params[:id])
    Rails.logger.info "Wyświetlono szczegóły wyborcy o ID: #{@wyborca.id}."
  end

  # Inicjuje nowy obiekt wyborcy.
  #
  # @return [void]
  def new
    @wyborca = Wyborca.new
    Rails.logger.info "Inicjowano nowy obiekt wyborcy."
  end

  # Tworzy nowego wyborcę na podstawie podanych parametrów.
  #
  # @return [void]
  def create
    @wyborca = Wyborca.new(wyborca_params)
    if @wyborca.save
      # UserMailer.registration_confirmation(@wyborca).deliver_now
      Rails.logger.info "Utworzono nowego wyborcę o ID: #{@wyborca.id}."
      redirect_to root_path, notice: 'Konto zostało założone pomyślnie.'
    else
      Rails.logger.warn "Nie udało się utworzyć nowego wyborcy. Błędy: #{@wyborca.errors.full_messages.join(', ')}"
      render :new
    end
  end

  # Edytuje istniejącego wyborcę.
  #
  # @return [void]
  def edit
    @wyborca = Wyborca.find(params[:id])
    Rails.logger.info "Edytowano wyborcę o ID: #{@wyborca.id}."
  end

  # Aktualizuje istniejącego wyborcę na podstawie podanych parametrów.
  #
  # @return [void]
  def update
    @wyborca = Wyborca.find(params[:id])
    if @wyborca.update(wyborca_params)
      Rails.logger.info "Zaktualizowano wyborcę o ID: #{@wyborca.id}."
      redirect_to @wyborca
    else
      Rails.logger.warn "Nie udało się zaktualizować wyborcy o ID: #{@wyborca.id}. Błędy: #{@wyborca.errors.full_messages.join(', ')}"
      render :edit
    end
  end

  # Usuwa istniejącego wyborcę.
  #
  # @return [void]
  def destroy
    @wyborca = Wyborca.find(params[:id])
    @wyborca.destroy
    Rails.logger.info "Usunięto wyborcę o ID: #{@wyborca.id}."
    redirect_to wyborcas_path
  end

  private

  # Definiuje dozwolone parametry dla wyborcy.
  #
  # @return [ActionController::Parameters] Zwraca dozwolone parametry.
  def wyborca_params
    params.require(:wyborca).permit(:imie, :nazwisko, :numer_tel, :email, :password, :password_confirmation)
  end
end
