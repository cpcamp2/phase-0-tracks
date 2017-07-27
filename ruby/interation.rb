#release 0
def say_hello
  name1 = gets.chomp.capitalize
  name2 = gets.chomp.capitalize
  puts "Why, hello there!"
  yield(name1, name2)
end
puts "Who are you saying hello to?"
say_hello { |name1, name2| puts "Great to see you, #{name1} and #{name2}!"}

#release 1
superheros = {
  "Spider-Man" => "peter parker",
  "Batman" => "bruce wayne",
  "Superman" => "clark kent",
  "The Flash" => "wally west",
  "Green Arrow" => "oliver queen"
}
superpowers = [
"Flight",
"Speed",
"Strength",
"Combat",
"None"
]

superheros.each do |hero, id|
  puts "#{hero}'s id is classified."
end

powershout = []
superpowers.each do |x|
  powershout << x.upcase
end
p powershout

superpowers.map! do |power|
  puts power+"!"
end

#release2
#hash
def delete(hash)
  hash.delete_if {|x,y| y.length < 12}
end
#p delete(superheros)

def keep(hash)
  hash.keep_if {|x,y| y.length > 11}
end
#p keep(superheros)

def filter(hash)
  hash.reject {|x,y| y == "peter parker"}
end
#p filter(superheros)

def remove(hash)
  hash.each do |x,y|
    puts y
    break if y == "clark kent"
  end
end
#p remove(superheros)

superpowers2 = [
"Flight",
"Speed",
"Strength",
"Combat",
"None"
]
#array
def delete2(array)
  array.delete_if {|x| x == array[3]}
  p array
end
#p delete2(superpowers2)

def keep2(array)
  array.keep_if {|x| x == array[3]}
end
#p keep2(superpowers2)

def filter2(array)
  array.reject {|x| x == array[3]}
end
#p filter2(superpowers2)

def remove2(array)
  array.each do |x|
    puts x
    break if x == array[3]
  end
end
#p remove2(superpowers2)
