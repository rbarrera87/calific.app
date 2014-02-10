class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	
def  not_authenticated
	redirect_to login_url, :alert => "Debes de logueartepara acceder a esta pagina"
end	

	rescue_from CanCan::AccessDenied do |exception|
		redirect_to root_path, :alert => exception.message
	end	

end
