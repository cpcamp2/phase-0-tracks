#Pseudocode - Encrypt Method
#For each letter in the string, advance one letter forward and return the output (add one to the index).
def encrypt(string)
new_string=""
idx=0
while idx < string.length
new_string << string[idx].next
idx+=1
end
new_string
end
encrypt(string)

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
decrypt(string)
