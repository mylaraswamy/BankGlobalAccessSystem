class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
    	t.string :username
    	t.string :fathername
    	t.string :designation
    	t.date   :birthday
    	t.string :gender
    	t.text   :address
    	t.string :country
    	t.string :state
    	t.integer :pincode
    	t.text   :email
    	t.integer :phonenumber
    	t.text   :globalaccessid
    	t.text   :partyindex
    	t.string :bankname
    	t.integer :accountnumber
    	t.string :accounttype
    	t.string :accountavailable
    	t.string :accountlocation
    	t.string :accountissued
    	t.integer :openbalance
    	t.integer :currentbalance
    	t.integer :balancelimit
    	t.integer :cardnumber
    	t.string :cardtype
    	t.string :cardavailable
    	t.string :cardlocation
    	t.integer :secretcode
    	t.date   :cardissueddate
    	t.date   :cardexpiredate
    	t.integer :cardlimit
    	t.integer :chequenumber
    	t.string :chequeavailable
    	t.string :chequelocation
    	t.date :chequeissueddate
    	t.date :chequeexpiredate
    	t.integer :chequelimit

      t.timestamps
    end
  end
end
