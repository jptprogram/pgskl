class VentasController < ApplicationController
  def index
    @ventas = Venta.all
  end

  def show
    @venta = Venta.find(params[:id])
  end

  def new
    @venta = Venta.new
  end

  def create
    @venta = Venta.create(venta_params)
    redirect_to venta_path(@venta)
  end

  private

  def venta_params
    params.require(:venta).permit(:modelo,:marca,:disponible,:link,:photo,:precio)
  end
end
