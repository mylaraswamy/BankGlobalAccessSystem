class Transaction < ActiveRecord::Base
belongs_to :banks
validates_acceptance_of :globalaccessid, :partyindex
validates_numericality_of :fromaccountto,:toaccount, :allow_nil => false,
    :greater_than => 3, :less_than_or_equal_to => 16, :only_integer => true
validates_acceptance_of :sendername, :receivername,:frombank,:tobank
validates_numericality_of :senderamount,:receiveramount, :allow_nil => false,
    :greater_than => 1000, :less_than_or_equal_to => 100000000, :only_integer => true
end

