#Create a method that swaps first and last names
def swap(name)
  name.split(' ').reverse.join(' ')
end #method end


#test swap(name) method
#name = gets.chomp
#swap(name)

#Create a method that changes all vowels to the next vowel and a method that cahnges all consonants to the next consonant.
def name_alias(name)
  vowels = ["a","e","i","o","u"]
  consonants = ["b","c","d","e","f","g","h","j","k","l","m","p","q","r","s","t","v","w","x","y","z"]
  
  #create alias w/ swap name
  next_alias = swap(name.downcase)
  #split 
  split_arr = next_alias.split('')
  #Iterate characters
  char_arr = split_arr.map do |char|
    #Loop to see if they contain vowels and consonants and if they do get the next index item for both
    #Check to see if any of the chars match the chars in vowels
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
      
      #Check to see if any of the chars match the chars in consonants
      elsif consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
        char
    end #If loop end
  end #Do loop
  #Figure out how to capitalize both words
      puts "Your name is #{name.split.map(&:capitalize).join(' ')}"
      spy_name = char_arr.join.split.map(&:capitalize).join(' ') 
      p spy_name
end #method end

#Test method
#name_alias('felicia torres')

#create interface to run through and print name and spy names until they quit and show the key w/ values 
def interface()
  #create a hash database to store names and generated spy names
 names_database = {}
 #create a loop that allows user to keep entering names until they type quit
  loop do
   puts "Enter your name to generate a spy name. Enter 'quit' to exit."
    name = gets.chomp.downcase
    #break if they type in 'quit'
    break if name == "quit"
    names_database[name.to_sym] = name_alias(name)
  end #do loop
  #print data base key and values for record
    names_database.each {|key, value| p "#{key.capitalize} has been assigned the name spyname #{value}"}
    puts "Thank you for using the Spy Name Generator!"
end #interface

interface()