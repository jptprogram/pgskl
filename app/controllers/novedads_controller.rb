class NovedadsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @novedades = Novedad.all
  end

  def show
    @novedad = Novedad.find(params[:id])
  end

  def new
    @novedad = Novedad.new
  end

  def create
    @novedad = Novedad.new(novedad_params)
    if @novedad.save
      redirect_to novedad_path(@novedad)
    else
      render :new
    end
  end

  def edit
    @novedad = Novedad.find(params[:id])
  end

  def update
    @novedad = Novedad.find(params[:id])
    if @novedad.update(novedad_params)
      redirect_to novedad_path(@novedad)
    else
      render :edit
    end
  end

  def destroy
    @novedad = Novedad.find(params[:id])
    @novedad.destroy

    redirect_to novedads_path
  end

  private

  def novedad_params
    params.require(:novedad).permit(:descripcion,:titulo,:photo)
  end
end
