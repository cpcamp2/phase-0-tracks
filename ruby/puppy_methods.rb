class Puppy
    def initialize
        @name = name
        puts "Initializing new puppy instance ..."
    end
    def fetch(toy)
        puts "#{@name} brought back the #{toy}!"
        puts "I brought back the #{toy}!"
        toy
    end
    def speak(number)
    p "Woof! "*number
    end
  
    def roll_over
     puts "*rolls over*"
    end
  
    def dog_years(number)
     return number*7
    end
  
    def stay
        puts "*stay*"
    end
  
end
# puppy = Puppy.new
#puppy.fetch("Toy")
#puppy.speak(5)
#puppy.roll_over
#puppy.dog_years(3)
#puppy.stay

class Cats
	def initialize(name)
		@name = name 
		puts "Meow!"
	end

	def catch(number)
		puts "#{@name} caught #{number} mice!"
	end

	def yarn
		puts "*#{@name} plays with yarn*"
	end
end

data_base = []
kitties = ["cat", 1]
placeholder = kitties.join

50.times do
	cat = Cats.new(placeholder)
	data_base << cat
	kitties[1] = kitties[1].next
	placeholder = kitties.join
end

data_base.each do | i |
	i.catch(2)
	i.yarn
end

p data_base