#Pseudocode - Encrypt Method
#For each letter in the string, advance one letter forward and return the output (add one to the index).
def encrypt(string)
new_string=""
idx=0
while idx < string.length
new_string << string[idx].next unless
if string[idx] == "z"
string[idx] = "a"
new_string << string[idx]
end
idx+=1
end
new_string
end

#Pseudocode - Decrypt
#For each letter in the string, go back in the alphabet one letter (subtract one to the index).
def decrypt(string)
  idx = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while idx < string.length
  string[idx] = alphabet[alphabet.index(string[idx]) - 1]
  idx += 1
end
string
end

# puts encrypt("abc")  result: bcd
# puts encrypt("zed")  result: afe
# puts decrypt("bcd")  result: abc
# puts decrypt("afe")  result: zed
# decrypt(encrypt("swordfish")) result: swordfish (encrypts then decrypts it)

# You can't decrypt something that isn't already encrypted. We could run the decrypt method on a password (or anything) and it would just essentially encrypt it defeating the purpose of the decrypt method.

#print message asking agent for input, also make an error message incase they enter anything other than encrypt or decrypt which takes them back to text based input.
#gets.chomp for text based input for encrypting or decrypting
#Asks the agent to enter password for encryption or decryption based on the choice they made prior.

puts "Hello Agent, would you like to decrypt or encrypt a password? (decrypt/encrypt)"
input = gets.chomp
until input == "encrypt" || input == "decrypt"
	puts "Error: Please enter either encrypt or decrypt"
	input = gets.chomp
end

puts "Please enter your password"
password = gets.chomp
if input == "encrypt"
	puts encrypt(password)
else
	puts decrypt(password)
end
	