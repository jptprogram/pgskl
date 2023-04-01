class TranspaletaApiladorElectricosController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @traspaletas = TranspaletaApiladorElectrico.all
  end

  def show
    @traspaleta = TranspaletaApiladorElectrico.find(params[:id])
  end

  def new
    @traspaleta = TranspaletaApiladorElectrico.new
  end

  def create
    @traspaleta = TranspaletaApiladorElectrico.create(traspaleta_params)
    redirect_to transpaletas_path(@traspaleta)
  end

  def destroy
    @traspaleta = TranspaletaApiladorElectrico.find(params[:id])
    @traspaleta.destroy

    redirect_to transpaletas_path
  end

  private

  def traspaleta_params
    params.require(:traspaleta).permit(:modelo, :marca, :disponible, :link, :photo, :descripcion)
  end
end
