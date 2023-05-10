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
    @grua = Grua.new(grua_params)
    if @grua.save
      redirect_to grua_path(@grua)
    else
      render :new
    end
  end

  def edit
    @grua = Grua.find(params[:id])
  end

  def update
    @grua = Grua.find(params[:id])
    if @grua.update(grua_params)
      redirect_to grua_path(@grua)
    else
      render :edit
    end
  end

  def destroy
    @grua = Grua.find(params[:id])
    @grua.destroy
    redirect_to gruas_path(all: true)
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
