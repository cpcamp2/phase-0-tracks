#Write a method that takes an array of integers and an integar to search for.
#Create a method with two parameters. Parameter one represents the array we are searching and 
#parameter two is the number we are searching for. We need code to search each individual 
#integer in the array to see if it matches the number we are searching for.
#If it does the method should return the index number of the matching number.
#and if it does not match any then the code should return nil.
#Release 0
def search_array(arr, int)
    i = 0
    while i < arr.length
        if arr[i] == int
            return i
        else
          puts NIL
        end
    i += 1
end
end
#random_array = [42, 89, 23, 1]
#p search_array(random_array, 50)
#Release 1
#Create a method that takes a number of Fibonacci terms to generate and return an array of the terms.
#Create a method called fib(i) that takes one parameter in this case an integer that represents the number of times we are running the sequence ie the number we want to Fibonacci
#Create an array that already has 0 as the first element, within the method definition so that it starts with a fixed value. 
#Starts with an array with zero already inside 
# arr = [0]
#Starting of fib sequence before loop. Where a = 0 and b = 1 
# if a positive number is entered...
#Create a while loop that repeats the following sequence a (the first # in the seq), b (the second # in the seq), and c is the fibonacci number ( a + b ). 
# Take the value of the first number add it to the value of the second number (which is first number plus 1) with the resulting number being the fib number. 
#The fib number is the starting point for the next sequence. 
# a = 0
# b = 1 
# if i >= 1 
# arr << 1  
# end 
# while arr.length < i 
# if i > 1 
# c = a + b 
# arr << c 
# a = b 
# b = c 
# end 
# p arr 
def fib(i)
  arr = [0]
a = 0
b = 1 
if i >= 1 
arr << 1  
end 
while arr.length < i 
  if i > 1 
  c = a + b 
  arr << c 
  a = b 
  b = c 
  end 
end 
p arr 
end 

fib(6)

fib(100).last

218922995834555169026 == 218922995834555169026
random_array = [42, 89, 23, 1]

p search_array(random_array, 50)

#Release 1
#Create a method that takes a number of Fibonacci terms to generate and return an array of the terms.
#Create a method called fib(int) that takes one parameter in this case an integer. 
def fib(int)
#Create an array that already has 0 as the first element, within the method definition so that it starts with a fixed value. 
fib_array = [0]
#Starting of fib sequence before loop. Where a = 0 and b = 1 

#Create a while loop that repeats the following sequence a (the first # in the seq), b (the second # in the seq), and 
# c is the fibonacci number ( a + b ). 