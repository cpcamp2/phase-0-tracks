puts "Please enter the hamsters name"
hamster_name = gets.chomp

puts "Please specify how loud your hamster is / want your hamster to be (1 to 10)"
hamster_volume = gets.chomp
hamster_volume = hamster_volume.to_i

puts "Please let us know what color your hamster is / want your hamster to be"
hamster_color = gets.chomp

puts "Do you think this hamster is a good candidate for adoption (y/n)"
hamster_adoption = gets.chomp

puts "Enter the estimated age of hamster"
hamster_age = gets.chomp
if hamster_age == ""
	hamster_age = nil
else
	hamster_age = hamster_age.to_i
end

puts "hamster name: #{hamster_name}" 
puts "hamster volume: #{hamster_volume}"
puts "hamster fur color: #{hamster_color}"
puts "hamster adoption candidaticy (y/n) #{hamster_adoption}"
puts "hamster age: #{hamster_age}"