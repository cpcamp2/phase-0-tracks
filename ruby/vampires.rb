#Directions:
#Write a program that asks these questions: 
#Loop entire thing for multiple employees
puts "How many employees will be processed?"
number_of_employees = gets.to_i
i = 0
while i < number_of_employees
#Intro statement
puts "Please answer these questions"
#Q1 - What is your name?
puts "What is your name?"
employee_name = gets.chomp.downcase
#Q2 - How old are you?
puts "What is your age? (e.g. 24)"
age = gets.to_i
#Q3 - What year were you born?
puts "What is your year of birth? (e.g. 1993)"
year_of_birth = gets.to_i
#Q4 - Our company cafeteria serves garlic bread. Should we order some for you?
puts "Our company cafeteria serves garlic bread. Should we order some for you? (please enter yes or no)"
garlic_bread = gets.chomp.downcase
#Q5 - Would you like to enroll in the company's health insurance?
puts "Would you like to enroll in the company's health insurance? (please enter yes or no)"
health_insurance = gets.chomp.downcase

puts "Please enter any allergies you may have one at a time (enter 'done' when finished)"
allergy = " "
until allergy == 'done' || allergy == 'sunshine'
	allergy = gets.chomp.downcase
	puts "Please enter another or exit by entering 'done'"
end

current_year = Time.new.year
#p current_year

#Create a correct age variable
correct_age = (age == current_year - year_of_birth) || (age == (current_year - 1) - year_of_birth)

#Create variables for liking garlic bread and disliking garlic bread
likes_garlic_bread = garlic_bread == "yes"

#Create variables for wanting or waivin health insurance
wants_insurance = health_insurance == "yes"

#To makre sure you get not the first, but latest response create a variable to store results in a string. 
#Set it's default to results inconclusive incase our if statements don't change the results variable.
#Create several small loops for each vampire detector result to update the results.
results = "Results inconclusive"
#If the employeee got their age right and is willing to eat garlic bread or sign up for insurance, the result is "Probably not a vampire."

if correct_age && (likes_garlic_bread || wants_insurance)
	results = "Probably not a vampire"
end#if
#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is "Probably a vampire"
if !correct_age && (!wants_insurance || !likes_garlic_bread)
	results = "Probably a vampire"
end#if
#If the employee got their age wrong, hates garlic bread, and doesn't want insurance, the result is "Almost certainly a vampire."
if !correct_age && (!wants_insurance && !likes_garlic_bread)	
	results = "Almost certainly a vampire"
end#if
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
if (employee_name == "drake cula" || employee_name == "tu fang")
	results = "Definitely a vampire"
end#if

if allergy == 'sunshine'
	results = "Probably a vampire"
end

p results


i += 1
end#while

puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."