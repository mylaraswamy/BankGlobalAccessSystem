class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_filter :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?

  	def is_systemmanager?  		
	  	if current_user.role_id == Role.find_by_name('System Manager').id
	  		return true
	  	else
	  		return false
	  	end
  	end

  	def is_customer?  		
	  	if current_user.role_id == Role.find_by_name('Customer').id
	  		return true
	  	else
	  		return false
	  	end
  	end

  	def is_manager?  		
	  	if current_user.role_id == Role.find_by_name('Manager').id
	  		return true
	  	else
	  		return false
	  	end
  	end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :address, :phone_number, :globalaccessid,:role_id) }
           
        end 
end
