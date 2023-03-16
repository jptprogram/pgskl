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
  end

  private

  def grua_params
    params.require(:grua).permit(:modelo,:marca,:disponible,:link,:photo,:category,:descripcion)
  end
end
