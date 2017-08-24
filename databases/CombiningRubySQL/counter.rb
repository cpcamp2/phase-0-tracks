#Create a rolodex

#Connect to SQLite
require 'sqlite3'

#Create SQLite3 database as a ruby hash
db = SQLite3::Database.new("rolodex.db")
db.results_as_hash = true

#Crate a command that creates tables
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS rolodex(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	phone_number INT,
	email VARCHAR(255),
	mailing_address VARCHAR(1000),
	comments VARCHAR(10000)
	)
	SQL

#create a table using the create table command
db.execute(create_table_cmd)

#Create methods that will: 
#I. create a contact  
def create_contact (rolodex, name, phone_number, email, mailing_address, comments)
	rolodex.execute("INSERT INTO rolodex (name, phone_number, email, mailing_address, comments) VALUES (?, ?, ?, ?, ?)", [name, phone_number, email, mailing_address, comments])
	puts "Here is your updated rolodex"
	view_rolodex(rolodex)
end #create_contact

#II. view your contacts 
def view_rolodex(rolodex)
	contacts = rolodex.execute("SELECT * FROM rolodex")
	contacts.each do |individual|
		puts "-----------------------------------------------------------"
		puts "Name: #{individual['name']}"
		puts "Phone Number: #{individual['phone_number']}"
		puts "Email: #{individual['email']}"
		puts "Address: #{individual['mailing_address']}"
		puts "Notes: #{individual['comments']}"
	end #iteration
end #view_rolodex

#III. remove a contact 
def remove_contact(rolodex, name)
	rolodex.execute("DELETE FROM rolodex WHERE name='#{name}'")
	puts "Here is your updated rolodex!"
	view_rolodex(rolodex)
end #remove_contact

#IV. update an existing contact
def update_contact(rolodex, name, option, new_value)
	p option
	rolodex.execute("UPDATE rolodex SET #{option}=? WHERE name=?", [new_value, name])
	puts "Here is your updated rolodex!"
	view_rolodex(rolodex)
end #update_contact

#V. view contact by name method
def lookup_contact(rolodex, name)
	contact = rolodex.execute("SELECT * FROM rolodex WHERE name=?", [name])
	if contact.length == 0
		puts "I do not recognize the name '#{name}'"
	else
		contact.each do |individual|
			puts "-----------------------------------------------------------"
			puts "Name: #{individual['name']}"
			puts "Phone Number: #{individual['phone_number']}"
			puts "Email: #{individual['email']}"
			puts "Address: #{individual['mailing_address']}"
			puts "Notes: #{individual['comments']}"
		end#do 
	end#if
end #lookup_contact

#Driver code
exit = false

until exit == true
	puts " "
	puts "----------------------------------------------------------------"
	puts "Welcome to your digital rolodex. Here are your options:"
	puts "Enter 'view rolodex' to see your rolodex"
	puts "Enter 'lookup contact' to find a contact by name"
	puts "Enter 'add contact' to add a new contact"
	puts "Enter 'update contact' to update a contact"
	puts "Enter 'remove contact' to remove a contact from your rolodex"
	puts "Enter 'exit' to quit"
	puts "----------------------------------------------------------------"
	puts " "

	input = gets.chomp.downcase

	case input

	when "view rolodex"
		view_rolodex(db)

	when "lookup contact"
		puts "Please enter the name of the contact you wish to see"
		name = gets.chomp.downcase
		lookup_contact(db, name)

	when "add contact" #db, name, phone_number, email, mailing_address, comments
		puts "What is the full name of your contact?"
			name = gets.chomp
		puts "What is their phone number?"
			phone_number = gets.chomp
		puts "What is their email?"
			email = gets.chomp
		puts "What is their address?"
			mailing_address = gets.chomp
		puts "Enter any comments you would like to add"
			comments = gets.chomp

		create_contact(db, name, phone_number, email, mailing_address, comments)

	when "update contact"
		puts "Who's contact information would you like to update?"
			name = gets.chomp
		puts "Please select an option"
		puts "Options: 'name', 'phone number', 'email', 'address', 'comments'"
		option = gets.chomp.downcase
			if option == "name"
				puts "Please enter new name"
				new_name = gets.chomp
				update_contact(db, name, 'name', new_name)
			elsif option == "phone number"
				puts "Please enter new number"
				new_number = gets.chomp
				update_contact(db, name, 'phone_number', new_number)
			elsif option == "email"
				puts "Please enter new email"
				new_email = gets.chomp
				update_contact(db, name, 'email', new_email)
			elsif option == "address"
				puts "Please enter new address"
				new_address = gets.chomp
				update_contact(db, name, 'address', new_address)
			elsif option == "comments"
				puts "Please enter your new comments"
				new_comments = gets.chomp
				update_contact(db, name, 'comments', new_comments)
			else
				puts "I'm sorry I didn't understand you"
			end #if loop

		when "remove contact"
			puts "Who would you like to remove?"
			name = gets.chomp
			remove_contact(db, name)

		when "exit"
			exit = true

	end #case
end #until