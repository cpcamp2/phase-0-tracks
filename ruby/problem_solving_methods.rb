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

#Release 2
#I'll focus on Bubble sort
#"Bubble sort walks through a list and compares each pair of adjacent items and swaps them if they are in the wrong order" (wikipedia)
#First Pass
#( 5 1 4 2 8 ) =>  ( 1 5 4 2 8 ), Here, algorithm compares the first two elements, and swaps since 5 > 1.
#( 1 5 4 2 8 ) =>  ( 1 4 5 2 8 ), Swap since 5 > 4
#( 1 4 5 2 8 ) =>  ( 1 4 2 5 8 ), Swap since 5 > 2
#( 1 4 2 5 8 ) =>  ( 1 4 2 5 8 ), Now, since these elements are already in order (8 > 5), algorithm does not swap them.
#I feel a little bit confused, but feel like once I work through the sorting algorithm it'll make more sense
#Sitepoint has a great page on sorting-algorithms in ruby.
#define the bubble sort method with an array (list) to sort through
def bubble_sort(arr)
#find the length of the list
n = arr.length + 1
#Set up a loop that will compare what is in the list
loop do
	# Create a variable called swapped, which is true if any swaps were made while walking down the array
	#If at the end of the loop swapped is false then return the sorted list.
	swapped = false
	(n-1).times do |i|
		if arr[i] > arr[i + 1]
			arr[i], arr[i + 1] = arr[i + 1], arr[i]
			#swapped = true is the termination condition for the loop
			swapped = true
		end
	end
	break if not swapped
end
arr

end

array = [9,1,6,4,3,5]

p bubble_sort(array)