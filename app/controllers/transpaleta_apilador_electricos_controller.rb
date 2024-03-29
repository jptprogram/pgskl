class TranspaletaApiladorElectricosController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @transpaletas = TranspaletaApiladorElectrico.all
  end

  def show
    @transpaleta = TranspaletaApiladorElectrico.find(params[:id])
  end

  def new
    @transpaleta = TranspaletaApiladorElectrico.new
  end

  def create
    @transpaleta = TranspaletaApiladorElectrico.new(transpaleta_params)
    if @transpaleta.save
      redirect_to transpaleta_apilador_electrico_path(@transpaleta)
    else
      render :new
    end
  end

  def edit
    @transpaleta = TranspaletaApiladorElectrico.find(params[:id])
  end

  def update
    @transpaleta = TranspaletaApiladorElectrico.find(params[:id])
    if @transpaleta.update(transpaleta_params)
      redirect_to transpaleta_apilador_electrico_path(@transpaleta)
    else
      render :edit
    end
  end

  def destroy
    @transpaleta = TranspaletaApiladorElectrico.find(params[:id])
    @transpaleta.destroy

    redirect_to transpaleta_apilador_electricos_path
  end

  private

  def transpaleta_params
    params.require(:transpaleta_apilador_electrico).permit(:modelo, :marca, :disponible, :link, :photo, :descripcion)
  end
end
