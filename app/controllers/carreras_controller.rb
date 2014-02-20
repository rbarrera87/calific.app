class CarrerasController < ApplicationController
  before_action :set_carrera, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @carreras = Carrera.all
  end

  def show
    render  'show'
  end

  def new
    @carrera = Carrera.new
  end

  def edit
  end

  def create
    @carrera = Carrera.new(carrera_params)
    @carrera.save
  end

  def update
    @carrera.update(carrera_params)
  end

  def destroy
    @carrera.destroy
  end

  private
    def set_carrera
      @carrera = Carrera.find(params[:id])
    end

    def carrera_params
        params.require(:carrera).permit(:nombre, :descripcion)
    end
end
