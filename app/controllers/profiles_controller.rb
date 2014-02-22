  class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
  	 @profiles = Profile.all
  end

  def update
  
  end

  def show
    render 'show'
  end

  def delete
  end

  def new
    @profile = Profile.new
  end

  def destroy
  end

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end
    def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_subject
    #  @subject = Subject.find(params[:id])
    #end
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:nombre, 
		:apellido_paterno,
		:apellido_materno, 
		:fotografia_url,  
		:numero_control, 
		:contrasena, 
		:fecha_nacimiento,
		:date, 
		:estado_civil,
		:sexo,
		:cp,
    :rfc,
		:curp, 
		:nss, 
		:telefono, 
		:celular,
		:correo_electronico,
		:calle,
		:numero_exterior,
		:numero_inteior,
		:numero_departamento,
		:referencias,
		:comentarios,
		:poblacion,
		:estado,
		:situacion)
    end
end
