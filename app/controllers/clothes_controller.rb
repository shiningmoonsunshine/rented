class ClothesController < ApplicationController
  def index
    @clothes = Clothe.all
  end

  def show
    @clothe = Clothe.find(params[:id])
  end
end
