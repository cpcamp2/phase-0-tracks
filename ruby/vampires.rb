puts "How many employees will be processed?"
employee_number = gets.chomp.to_i

i = 0

until i >= employee_number

puts "What is your name?"
employee_name = gets.chomp.downcase

puts "How old are you? (ex. 32)"
employee_age = gets.chomp.to_i

puts "What year were you born? (ex. 1922)"
employee_dob = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
employee_garlic = gets.chomp.downcase

puts "Would you like to enroll in the company's health insurance? (y/n)"
employee_insurance = gets.chomp.downcase

allergy = nil

loop do
puts "Please list any allergies that you may have one at a time and type done when finished"
allergy_input = gets.chomp.downcase

	if allergy_input == "sunshine"
		allergy = true
		puts "Probably a vampire"
		break
	elsif allergy_input == "done"
		allergy = false
		break
	end
end

if allergy == true 
	break
end

current_year = Time.new.year
c_birth_year = current_year - employee_age
c_age = current_year - c_birth_year

if 
	employee_name == "drake cula" || employee_name == "tu fang"
	puts "Definitely a vampire"
elsif
	(c_birth_year != employee_dob) && (employee_garlic == "n" && employee_insurance == "n")
	puts "Almost certainly a vampire"	
elsif	
	(c_birth_year != employee_dob) && (employee_garlic == "n" || employee_insurance == "n")
	puts "Probably a vampire"
elsif
	(c_birth_year == employee_dob) && (employee_garlic == "y" || employee_insurance == "y")
	puts "Probably not a vampire"
else
	puts "Results inconclusive"
end
	i += 1
end

puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."