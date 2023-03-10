class RepuestosController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @repuestos = Repuesto.all
  end

  def show
    @repuesto = Repuesto.find(params[:id])
  end

  def new
    @repuesto = Repuesto.new
  end

  def create
    @repuesto = Repuesto.create(repuesto_params)
    redirect_to repuesto_path(@repuesto)
  end

  private

  def repuesto_params
    params.require(:repuesto).permit(:modelo,:marca,:disponible,:link,:photo,:precio)
  end
end
