class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :name
    	t.text :email
    	t.integer :phonenumber
    	t.text :address
    	t.text :message
      t.timestamps
    end
  end
end
