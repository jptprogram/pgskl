class TranspaletaApiladorElectricosController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @transpaletas = TranspaletaApiladorElectrico.all
  end

  def show
    @transpaleta = TranspaletaApiladorElectrico.find(params[:id])
  end

  def new
    @transpaleta = TranspaletaApiladorElectrico.new
  end

  def create
    @transpaleta = TranspaletaApiladorElectrico.create(transpaleta_params)
    redirect_to transpaleta_apilador_electrico_path(@transpaleta)
  end

  def destroy
    @transpaleta = TranspaletaApiladorElectrico.find(params[:id])
    @transpaleta.destroy

    redirect_to transpaleta_apilador_electrico_path
  end

  private

  def transpaleta_params
    params.require(:transpaleta).permit(:modelo, :marca, :disponible, :link, :photo, :descripcion)
  end
end
