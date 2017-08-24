#Create a rolodex

#Connect to SQLite
require 'sqlite3'
require 'faker'

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
def create_contact (rolodex, name, phone_number, email, mailing_address comments)
	
end #create_contact

#II. view your contacts 


#III. remove a contact 


#IV. update an existing contact

