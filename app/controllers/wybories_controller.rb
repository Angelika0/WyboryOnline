class WyboriesController < ApplicationController
  def index
    @wybories = Wybory.where("data_zakonczenia >= ?", Time.current)
  end

  def show
    @wybory = Wybory.find(params[:id])
    if @wybory.data_zakonczenia < Time.current
      redirect_to root_path, alert: 'Te wybory już się zakończyły.'
    else
      @kandydaci = @wybory.kandydats
    end
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

  def wyniki
    @zakonczone_wybory = Wybory.where('data_zakonczenia < ?', Time.current).order(data_zakonczenia: :desc)
  end

  private

  def wybory_params
    params.require(:wybory).permit(:tytul, :id_typu_wyborow, :data_rozpoczecia, :data_zakonczenia, :kryteria_glosowania, :max_votes)
  end
end
