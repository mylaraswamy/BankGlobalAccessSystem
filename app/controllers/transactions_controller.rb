class TransactionsController < ApplicationController
before_action :authenticate_user!
def new
		@transaction = Transaction.new()
	end
	def create
		@transaction = Transaction.new(transaction_params)
		if@transaction.save
			redirect_to transactions_show_path
			flash[:notice] = 'Transaction Successfully Completed !'
		else
			flash[:error] = 'Please Enter valid Details'
			redirect_to new_transaction_path
		end
	end
	def show
		#@transaction = Transaction.find(params[:id])
	end
	def index
		@transactions = Transaction.all
	if is_systemmanager?
		@transactions = Transaction.all
	elsif is_customer?
		@transactions = Transaction.all.where(:globalaccessid => current_user.globalaccessid)
	end				
	end
	def destroy
		@transaction = Transaction.find(params[:id])
		@transaction.destroy
		redirect_to transactions_path
	end
	def edit
		@transaction = Transaction.find(params[:id])
	end
	def update
		@transaction = Transaction.find(params[:id])
		if@transaction.update_attributes(transaction_params)
			redirect_to transactions_path
			flash[:notice] = 'The Transaction Details Updated Successfully !'
		else
			flash[:error] = 'Missing Field'
			redirect_to new_transaction_path
		end
	end
	private
	def transaction_params
		params.require(:transaction).permit(:globalaccessid,:fromaccountto,:toaccount,:sendername,:receivername,:frombank,:tobank,:senderamount,:receiveramount,:partyindex,:id)
end
end
