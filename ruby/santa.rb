#Define a santa class
class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age
	#Initialize method
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end #initialize
	#Speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end #speak

	#Eat Milk & Cookies method
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end # eat milk & cookie methd

	# def age(age = 0)
	# 	puts "#{age} years old"
	# end #Method age

	#Birthday method
	def celebrate_birthday
		@age += 1
	end

	#Get mad at method
	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end


	#reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

end #class Santa


# santa = Santa.new
# p santa.speak

# p santa.eat_milk_and_cookies("snickerdoodle")


# santas = Santa.new
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")




# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# database = []
# santas.each { |gender, ethnicity| santas << Santa.new(gender, ethnicity) }

# # Testing Release 2 & 3
# p database[3]
# database[2].gender = "boy"
# p database[2].ethnicity
# database[2].celebrate_birthday
# database[1].get_mad_at("Prancer")
# p database[3].age
# p databasea[5]

# Release 4
database = Random.new

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do
	santa = Santa.new(example_genders[database.rand(0...7)], example_ethnicities[database.rand(0...7)])
	santa.age = database.rand(0..140)
	p santa
end