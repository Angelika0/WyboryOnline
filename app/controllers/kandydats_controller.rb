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

  def destroy
    @kandydat = Kandydat.find(params[:id])
    @kandydat.destroy
    redirect_to kandydats_path
  end

  private

  def kandydat_params
    params.require(:kandydat).permit(:id_partii, :imie, :nazwisko, :rok_urodzenia)
  end
end
