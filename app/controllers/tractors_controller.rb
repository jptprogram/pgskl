class TractorsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @tractors = Tractor.all
  end

  def show
    @tractor = Tractor.find(params[:id])
  end

  def new
    @tractor = Tractor.new
  end

  def create
    @tractor = Tractor.new(tractor_params)
    if @tractor.save
      redirect_to tractor_path(@tractor)
    else
      render :new
    end
  end

  def edit
    @tractor = Tractor.find(params[:id])
  end

  def update
    @tractor = Tractor.find(params[:id])
    if @tractor.update(tractor_params)
      redirect_to tractor_path(@tractor)
    else
      render :edit
    end
  end

  def destroy
    @tractor = Tractor.find(params[:id])
    @tractor.destroy

    redirect_to tractors_path
  end

  private

  def tractor_params
    params.require(:tractor).permit(:modelo,:marca,:disponible,:link,:photo,:descripcion)
  end
end
