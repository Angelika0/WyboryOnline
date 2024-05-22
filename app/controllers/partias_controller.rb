class PartiasController < ApplicationController
  def index
    @partias = Partia.all
  end

  def show
    @partia = Partia.find(params[:id])
  end

  def new
    @partia = Partia.new
  end

  def create
    @partia = Partia.new(partia_params)
    if @partia.save
      redirect_to @partia
    else
      render :new
    end
  end

  def edit
    @partia = Partia.find(params[:id])
  end

  def update
    @partia = Partia.find(params[:id])
    if @partia.update(partia_params)
      redirect_to @partia
    else
      render :edit
    end
  end

  def destroy
    @partia = Partia.find(params[:id])
    @partia.destroy
    redirect_to partias_path
  end

  private

  def partia_params
    params.require(:partia).permit(:nazwa)
  end
end
