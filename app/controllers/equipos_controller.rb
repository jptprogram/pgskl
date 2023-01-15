class EquiposController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]

  def index
    @equipos = Equipo.all
  end

  def show
    @equipo = Equipo.find(params[:id])
  end

  def new
    @equipo = Equipo.new
  end

  def create
    @equipo = Equipo.create(equipo_params)
    redirect_to equipo_path(@equipo)
  end

  private

  def equipo_params
    params.require(:equipo).permit(:modelo,:marca,:disponible,:link,:photo)
  end
end
