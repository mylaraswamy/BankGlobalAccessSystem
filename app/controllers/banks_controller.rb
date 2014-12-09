class BanksController < ApplicationController
	before_action :authenticate_user!, :is_manager?
def new
		@bank = Bank.new()
	end
	def create
		@bank = Bank.new(bank_params)
		if@bank.save
			redirect_to banks_path
			flash[:notice] = 'The Bank Details are Saved Successfully !'
		else
			flash[:error] = 'Please Enter valid Details'
			redirect_to new_bank_path
		end
	end
	def show
		@bank = Bank.find(params[:id])
	end
	def index
		@banks = Bank.all
	if is_systemmanager?
		@banks = Bank.all
	elsif is_customer?
		@banks = Bank.all.where(:globalaccessid => current_user.globalaccessid)
	end				
	end
	def destroy
		@bank = Bank.find(params[:id])
		@bank.destroy
		redirect_to banks_path
	end
	def edit
		@bank = Bank.find(params[:id])
	end
	def update
		@bank = Bank.find(params[:id])
		if@bank.update_attributes(bank_params)
			redirect_to banks_path
			flash[:notice] = 'The Bank Details Updated Successfully !'
		else
			flash[:error] = 'Missing Field'
			redirect_to new_bank_path
		end
	end
	private
	def bank_params
		params.require(:bank).permit(:username,:fathername,:designation,:birthday,:gender,:address,:country,:state,:pincode,:email,:phonenumber,
			:globalaccessid,:partyindex,:bankname,:accountnumber,:accounttype,:accountavailable,:accountlocation,:accountissued,:openbalance,:currentbalance,:balancelimit,
			:cardnumber,:cardtype,:cardavailable,:cardlocation,:secretcode,:cardissueddate,:cardexpiredate,:cardlimit,
			:chequenumber,:chequeavailable,:chequelocation,:chequeissueddate,:chequeexpiredate,:chequelimit,:id)
end
end
