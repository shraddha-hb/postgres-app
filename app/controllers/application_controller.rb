class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?
	helper :all
	protected
	 
	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
	end	

	def current_cart
    session[:cart_id] ||= Cart.create!.id
    @current_cart ||= Cart.find(session[:cart_id])
  end	
end
