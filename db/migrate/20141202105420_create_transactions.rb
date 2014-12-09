class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
        
    	t.text :globalaccessid
    	t.text :partyindex
    	t.integer :fromaccountto
    	t.integer :toaccount
    	t.string :sendername
    	t.string :receivername
    	t.string :frombank
    	t.string :tobank
    	t.integer :senderamount
    	t.integer :receiveramount
    	
      t.timestamps
    end
  end
end
