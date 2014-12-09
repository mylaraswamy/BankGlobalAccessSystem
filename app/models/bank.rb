class Bank < ActiveRecord::Base
has_many :transactions
validates_uniqueness_of :username,:fathername,maximum: 30
validates_acceptance_of :designation,:country,:state,:bankname,:accounttype,:accountavailable,:accountlocation,:accountissued,:cardtype,:cardlocation,:cardavailable,:chequeavailable,:chequelocation,maximum: 30
validates_acceptance_of :birthday,:cardissueddate,:cardexpiredate,:chequeissueddate,:chequeexpiredate
validates_inclusion_of :gender, in: %w( m f )
validates_acceptance_of :address,maximum:50
validates_length_of :pincode, maximum: 6
validates_format_of :phonenumber, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i
validates_uniqueness_of :globalaccessid,:partyindex,maximum: 8
validates_numericality_of :accountnumber,:cardnumber,:chequenumber,:secretcode,:allow_nil => false,
    :greater_than => 3, :less_than_or_equal_to => 16, :only_integer => true
validates_numericality_of :openbalance,:currentbalance, :allow_nil => false,
    :greater_than => 1000, :less_than_or_equal_to => 10000, :only_integer => true
validates_numericality_of :balancelimit,:cardlimit,:chequelimit, :allow_nil => false,
    :greater_than => 1000, :less_than_or_equal_to => 10000, :only_integer => true


end
