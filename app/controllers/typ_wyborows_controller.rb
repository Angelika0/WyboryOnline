class TypWyborowsController < ApplicationController
def index
  @typ_wyborows = TypWyborow.all
end

def show
  @typ_wyborow = TypWyborow.find(params[:id])
end

def new
  @typ_wyborow = TypWyborow.new
end

def create
  @typ_wyborow = TypWyborow.new(typ_wyborow_params)
  if @typ_wyborow.save
    redirect_to @typ_wyborow
  else
    render :new
  end
end

def edit
  @typ_wyborow = TypWyborow.find(params[:id])
end

def update
  @typ_wyborow = TypWyborow.find(params[:id])
  if @typ_wyborow.update(typ_wyborow_params)
    redirect_to @typ_wyborow
  else
    render :edit
  end
end

def destroy
  @typ_wyborow = TypWyborow.find(params[:id])
  @typ_wyborow.destroy
  redirect_to typ_wyborows_path
end

private

def typ_wyborow_params
  params.require(:typ_wyborow).permit(:typ)
end
end
