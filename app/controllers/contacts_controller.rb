class ContactsController < ApplicationController

	def new
		  @contact = Contact.new()
		end

		def create
		  @contact = Contact.new(contact_params)
		  if @contact.save
		    redirect_to messages_path
		    flash[:notice] = "Message has been sended Successfully"
		  else
			flash[:error] = "Please fill all field Correctly"
			redirect_to new_contact_path
		  end
		end

		def index
		  @contacts = Contact.all
		end
		#def show
	    #	@contact = Contact.find(params[:id])
	    #end
		def destroy
		  @contact = Contact.find(params[:id])
		  @contact.destroy
		  redirect_to contacts_path
		end
		
		private

		def contact_params 
		    params.require(:contact).permit(:name, :email,:phonenumber,:address,:message,:id)
		end
end