class MaquinariapesadasController < ApplicationController

  def index
    @maquinariapesadas = Maquinariapesada.all
  end

  def show
    @maquinariapesada = Maquinariapesada.find(params[:id])
  end

  def new
    @maquinariapesada = Maquinariapesada.new
  end

  def create
    @maquinariapesada = Maquinariapesada.create(maquinariapesada_params)
    redirect_to maquinariapesada_path(@maquinariapesada)
  end

  private

  def maquinariapesada_params
    params.require(:maquinariapesada).permit(:modelo,:marca,:disponible,:link,:photo)
  end
end
