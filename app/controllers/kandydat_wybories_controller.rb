class KandydatWyboriesController < ApplicationController
  def index
    @kandydat_wybories = KandydatWybory.all
  end

  def show
    @kandydat_wybor = KandydatWybory.find(params[:id])
  end

  def new
    @kandydat_wybor = KandydatWybory.new
  end

  def create
    @kandydat_wybor = KandydatWybory.new(kandydat_wybor_params)
    if @kandydat_wybor.save
      redirect_to @kandydat_wybor
    else
      render :new
    end
  end

  def edit
    @kandydat_wybor = KandydatWybory.find(params[:id])
  end

  def update
    @kandydat_wybor = KandydatWybory.find(params[:id])
    if @kandydat_wybor.update(kandydat_wybor_params)
      redirect_to @kandydat_wybor
    else
      render :edit
    end
  end

  def destroy
    @kandydat_wybor = KandydatWybory.find(params[:id])
    @kandydat_wybor.destroy
    redirect_to kandydat_wybories_path
  end

  private

  def kandydat_wybor_params
    params.require(:kandydat_wybor).permit(:id_kandydata, :id_wyborow, :ilosc_glosow)
  end
end
