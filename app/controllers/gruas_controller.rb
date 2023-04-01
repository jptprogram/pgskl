class GruasController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  def index
    @gruas = Grua.all
  end

  def show
    @grua = Grua.find(params[:id])
  end

  def new
    @grua = Grua.new
  end

  def create
    @grua = Grua.create(grua_params)
    redirect_to grua_path(@grua)
  end

  def destroy
    @grua = Grua.find(params[:id])
    @grua.destroy
    redirect_to gruas_path
    flash[:success] = "Grua eliminada correctamente"
  end

  private

  def set_gruas
    case params
    when params[:combustion].present?
      @gruas = Grua.where(category: "Combustion")
    when params[:electrica].present?
      @gruas = Grua.where(category: "Electrica")
    when params[:diesel].present?
      @gruas = Grua.where(category: "Diesel")
    else
      @gruas = Grua.all
    end
  end

  def grua_params
    params.require(:grua).permit(:modelo,:marca,:disponible,:link,:photo,:category,:descripcion)
  end
end
