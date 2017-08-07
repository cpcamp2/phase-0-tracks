# Release 1
# #User can enter a word (or phrase if the game can support that) and a second user tries to guess the word
# #Guessed must be limited and the number of guesses must be related to the length of the word
# #Repeated guesses do not count against the user
# #The guessing player receives feedback on the current state of the word. (basically hangman). 
# #If the user wins then put a congratulatory message and if the lose taunt them.

# I. Set up a Hangman class
class Hangman
	#attr_reader :instance variables
	attr_reader :word, :word_split, :guess_count, :chance, :guessed, :end_game, :letter_guessed
# II. Initialize method for a string (use attr_reader so that instance variables can be read outside)
	def initialize(word)
		
# 	i. Put a initializing game statement on the screen
	puts "Initializing game..."
# 	ii. Instance variables for:
# 	 	a. The word (entered by first user - the word to be guessed)
		@word = word
# 	 	b. Split the word into letters that can be guessed and assign to a new instance variable
		@word_split = word.split("")
# 	 	c. Default a guess count instance variable to start at 0
		@guess_count = 0 
# 	 	d. The chances of winning the game based on the amount of guesses you have. 
		@chance = word.length
# 	 	e. Amt of guesses should be assigned to a variable using the length of the word to be guessed.
		@guessed = Array.new(word.length, "_")
# 	 	f. Set variable to false for end of game
		@end_game = false
# 	 	g. Letter guessed assigned to a variable.
		@letter_guessed = letter_guessed
	end #method
# III. Method for checking if you already guessed that letter or seeing if you didn't enter a single character string (input from second user)
def guess_check(letter_guessed)
# 	i. Run a loop to be sure that the letter guessed is a string and if it isn't a string or a single letter put up a warning message and the method
	if letter_guessed.class.to_s != "String" or letter_guessed.length !=1
		puts "Guesses must be a single letter. Enter another guess."
		@guess_check = false
# 	ii. If it is a string and a single character continue and run to see if the letter has been guessed already or not. 
	elsif @guessed.include? letter_guessed
		puts "Letter #{letter_guessed} guessed already. Enter another guess"
		@guess_check = false
	else
		@guess_check = true
	end #if
end #method

# IV. Method for guessing a letter in the word
def guess(letter_guessed)
# 	i. Run loop to see if the letter has been guessed yet.
	if word_split.include? (letter_guessed)
		# a. Iterate through the word characters to see if it includes the letter guessed
		@word_split.each_with_index do |char, index|
			if word_split[index] == letter_guessed
				@guessed[index] = letter_guessed
			end #if
		end #do
		# b. If it is right then put you have guessed a letter and then ask for another guess repeat method
		puts "You guessed correctly. Enter another guess"
# 		c. If it is wrong then put you have guessed wrong and ask for another guess. Maybe return how many guesses you have left?
	else
		@guess_count +=1
		puts "You guessed incorrectly. Enter another guess"
	end#if
end#method

# V. Method for end-game
def check_end_game
# 	i. print guessed
#	p @guessed
#   ii. number of guesses is chances - count
	guesses = @chance - @guess_count
# 	iii. Loop 
#		a. To see if not guessed include _ if it is then end game with a congrationatory statement.
	if !@guessed.include?('_')
		@end_game = true
		puts "You have won!!! Want to try to win again?"
# 		b. if guesses are less than 1 then end game with a teasing statement.
	elsif guesses < 1
		@end_game = true
		puts "You have lost!! Want to lose again?"
# 		c. if guessed is equal to the split word (word_split)
	elsif @guessed == @word_split
		puts "You have won!!! Want to try to win again?"
		@end_game = true
	end#if
# 	 iv. Loop
# 	  	a. if endgame is false 
	if @end_game == false
		puts "You have #{guesses} guesses left."
	end#if
	# b. print end game
	@end_game
end#method
end#class


# VI. Create a user interface that requests input from both users.
def interface
# 	i. Welcome message
puts "Welcome the world of hangman"
# 	ii. Ask first user for the hangman word
puts "Enter a word for the other player to guess:"
# 	iii. Create a variable w/ a database for that word.
word = gets.chomp.downcase
hangman = Hangman.new(word)
# 	iv. Loop that so that they can keep inputting until all of their guesses are used up.
puts "Enter a letter to guess: "
until hangman.end_game == true
	p hangman.guessed
#	puts "Input your guess (input a single letter): "
		letter_guessed = gets.chomp.downcase
		until hangman.guess_check(letter_guessed) == true
			letter_guessed = gets.chomp.downcase
		end#until
		#v. call it and check to see if end game
		hangman.guess(letter_guessed)
		hangman.check_end_game
end# until
puts "Endgame - Restart Program to Play Again."
end#method 

interface