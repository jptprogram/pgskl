class GruasController < ApplicationController
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

  private

  def grua_params
    params.require(:grua).permit(:modelo,:marca,:disponible,:link,:photo)
  end
end
