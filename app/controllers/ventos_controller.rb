class VentosController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @ventos = Vento.all
  end

  def show
    @vento = Vento.find(params[:id])
  end

  def new
    @vento = Vento.new
  end

  def create
    @vento = Vento.create(vento_params)
    redirect_to vento_path(@vento)
  end

  def edit
    @vento = Vento.find(params[:id])
  end

  def update
    @vento = Vento.find(params[:id])
    if @vento.update(vento_params)
      redirect_to vento_path(@vento)
    else
      render :edit
    end
  end

  def destroy
    @vento = Vento.find(params[:id])
    @vento.destroy

    redirect_to ventos_path
  end

  private

  def vento_params
    params.require(:vento).permit(:modelo,:marca,:disponible,:link,:photo,:precio,:descripcion)
  end
end
