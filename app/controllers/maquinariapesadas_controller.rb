class MaquinariapesadasController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

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
    @maquinariapesada = Maquinariapesada.new(maquinariapesada_params)
    if @maquinariapesada.save
      redirect_to maquinariapesada_path(@maquinariapesada)
    else
      render :new
    end
  end

  def edit
    @maquinariapesada = Maquinariapesada.find(params[:id])
  end

  def update
    @maquinariapesada = Maquinariapesada.find(params[:id])
    if @maquinariapesada.update(maquinariapesada_params)
      redirect_to maquinariapesada_path(@maquinariapesada)
    else
      render :edit
    end
  end

  def destroy
    @maquinariapesada = Maquinariapesada.find(params[:id])
    @maquinariapesada.destroy

    redirect_to maquinariapesadas_path
  end

  private

  def maquinariapesada_params
    params.require(:maquinariapesada).permit(:modelo,:marca,:disponible,:link,:photo,:descripcion)
  end
end
