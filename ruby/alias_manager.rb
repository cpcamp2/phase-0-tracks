#Pseudocode and write a method that takes a spy's real name and creates a fakename with it by doing the following:
#Swapping the first and last name
#Define name swapper method with a single parameter being the full name
  #input would be the full name string
  #split string by the space then reverse and then join with " " between the names
def name_swapper(name)
  name.split(" ").reverse.join(" ")
end#def

#Test method
#p name_swapper("Chris Camp")

#Changing all of the vowels to the next vowel
def next_vowel(char)
  #Define vowels and create a cipher hash so that the key has a next vowel value
  vowel_cipher = {'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}
  #if the character has the key then replace the character with that key's value which is the next vowel.
  if vowel_cipher.has_key?(char)
    char = vowel_cipher[char]
  end#if
end#def

#Test method
#p next_vowel('a')

#Changing all of the consonants to the next consonant
def next_consonant(char)
  #Define vowels and create a cipher hash so that the key has a next vowel value
  consonant_cipher = { 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b'}
  #if the character has the key then replace the character with that key's value which is the next consonant
  if consonant_cipher.has_key?(char)
    char = consonant_cipher[char]
  end#if
end#def

#Test method
#p next_consonant('b')

#Create an alias
def create_alias(name)
  vowels = ["a","e","i","o","u"]
    consonants = ["b","c","d","e","f","g","h","j","k","l","m","p","q","r","s","t","v","w","x","y","z"]
#Store the swapped name
  name_alias = name_swapper(name.downcase)
#Split string into characters in an array
  alias_split = name_alias.split('')
#Iterate through all of the characters
  new_alias = alias_split.map do |char|
  #Run a loop to change vowels and consonants into the next vowel using next methods
    if vowels.include?(char)
      next_vowel(char)
    elsif consonants.include?(char)
      next_consonant(char)
    else
      char
    end#if
  end#do
  spy_name = new_alias.join.split.map(&:capitalize).join(' ')
  #p spy_name
end#alias

#Test method
#p create_alias("Felicia Torres")

#User Interface
database = {}
puts "Welcome to the spy name generator"
loop do
puts "Please enter your name to generate a spy name (type 'q' to quit)"
name = gets.chomp
break if name == 'q'
create_alias(name)
database[name.to_sym] = create_alias(name)
end#do
database.each do |realname, spyname|
  p "#{realname} has been assigned the spy name of #{spyname}"
end#do
puts "Thank you for using the Spy Name Generator"
