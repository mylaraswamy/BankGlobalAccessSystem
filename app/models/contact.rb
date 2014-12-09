class Contact < ActiveRecord::Base
validates_acceptance_of :name,:address,:message
validates_format_of :phonenumber, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i
end
