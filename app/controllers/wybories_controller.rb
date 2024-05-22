class WyboriesController < ApplicationController
  def index
    @wybories = Wybory.all
  end

  def show
    @wybory = Wybory.find(params[:id])
  end

  def new
    @wybory = Wybory.new
  end

  def create
    @wybory = Wybory.new(wybory_params)
    if @wybory.save
      redirect_to @wybory, notice: 'Wybory zostały pomyślnie utworzone.'
    else
      render :new
    end
  end

  def edit
    @wybory = Wybory.find(params[:id])
  end

  def update
    @wybory = Wybory.find(params[:id])
    if @wybory.update(wybory_params)
      redirect_to @wybory
    else
      render :edit
    end
  end

  def destroy
    @wybory = Wybory.find(params[:id])
    @wybory.destroy
    redirect_to wybories_path
  end

  private

  def wybory_params
    params.require(:wybory).permit(:id_typu_wyborow, :data_rozpoczecia, :data_zakonczenia, :kryteria_glosowania)
  end
end
