class ClothesController < ApplicationController
  def index
    @clothes = Clothe.all
  end

  def show
    @clothe = Clothe.find(params[:id])
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(clothe_params)
    if @clothe.save
      redirect_to clothe_path(@clothe)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def clothe_params
    params.require(:clothe).permit(:date, :status)
  end
end
