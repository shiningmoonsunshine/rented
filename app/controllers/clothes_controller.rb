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
    @clothe.user = current_user
    if @clothe.save
      redirect_to clothe_path(@clothe.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @clothe = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to clothes_path, status: :see_other
  end

  private

  def clothe_params
    params.require(:clothe).permit(:title, :description, :category, :price, :address, :photo)
  end
end
