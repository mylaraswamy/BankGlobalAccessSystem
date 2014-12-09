module ApplicationHelper
	def is_manager?  		
	  	if current_user.role_id == Role.find_by_name('Manager').id
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

  	def is_systemmanager?  		
	  	if current_user.role_id == Role.find_by_name('System Manager').id
	  		return true
	  	else
	  		return false
	  	end
  	end
  end
