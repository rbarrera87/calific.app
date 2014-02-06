class ProfileController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@user = current_user
  end

  def update
  	
  end

  def delete
  end

  def new
  end

  def destroy
  end

  def edit
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_subject
    #  @subject = Subject.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.require(:profile).permit(
      	:nombre, 
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
