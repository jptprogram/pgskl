class TranspaletaController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @traspaletas = Traspaleta.all
  end

  def show
    @traspaleta = Traspaleta.find(params[:id])
  end

  def new
    @traspaleta = Traspaleta.new
  end

  def create
    @traspaleta = Traspaleta.create(traspaleta_params)
    redirect_to traspaleta_path(@traspaleta)
  end

  def destroy
    @traspaleta = Traspaleta.find(params[:id])
    @traspaleta.destroy

    redirect_to traspaletas_path
  end

  private

  def traspaleta_params
    params.require(:traspaleta).permit(:modelo, :marca, :disponible, :link, :photo, :descripcion)
  end
end
