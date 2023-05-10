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
    @equipo = Equipo.new(equipo_params)
    if @equipo.save
      redirect_to @equipo
    else
      render 'new'
    end
  end

  private

  def equipo_params
    params.require(:equipo).permit(:modelo,:marca,:disponible,:link,:photo)
  end
end
