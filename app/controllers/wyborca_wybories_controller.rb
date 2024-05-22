class WyborcaWyboriesController < ApplicationController
  def index
    @wyborca_wybories = WyborcaWybory.all
  end

  def show
    @wyborca_wybor = WyborcaWybory.find(params[:id])
  end

  def new
    @wyborca_wybor = WyborcaWybory.new
  end

  def create
    @wyborca_wybor = WyborcaWybory.new(wyborca_wybor_params)
    if @wyborca_wybor.save
      redirect_to @wyborca_wybor
    else
      render :new
    end
  end

  def edit
    @wyborca_wybor = WyborcaWybory.find(params[:id])
  end

  def update
    @wyborca_wybor = WyborcaWybory.find(params[:id])
    if @wyborca_wybor.update(wyborca_wybor_params)
      redirect_to @wyborca_wybor
    else
      render :edit
    end
  end

  def destroy
    @wyborca_wybor = WyborcaWybory.find(params[:id])
    @wyborca_wybor.destroy
    redirect_to wyborca_wybories_path
  end

  private

  def wyborca_wybor_params
    params.require(:wyborca_wybor).permit(:id_wyborcy, :id_wyborow)
  end
end

