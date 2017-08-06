# #Release 1

# #Declare module
# module Shout
# 	#Method for angry yelling
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   	#Method for happily yelling
#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

#Add driver code for module declaration that calls both methods
# p Shout.yell_angrily('You are an idiot')
# p Shout.yell_happily('Lets drink')

#Release 3
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  	#Method for happily yelling
  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class Father
	include Shout
end

class Son
	include Shout
end

Joffrey = Son.new
puts Joffrey.yell_angrily("You can't talk to me like that! The king can do as he likes.")

Robert = Father.new
puts Robert.yell_happily("You've got fat.")