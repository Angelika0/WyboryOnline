class PublicController < ApplicationController
  def home
    @latest_wybory = Wybory.order(data_zakonczenia: :desc).first
  end
end
