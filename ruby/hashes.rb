#Create new Hash "client"
client = Hash.new

#Ask questions and request input
puts "Enter Client Name"
name = gets.chomp.capitalize

puts "Enter Client Age"
age = gets.chomp.to_i

puts "Enter How Many Children Client Has"
children_num = gets.chomp.to_i

puts "Enter Decor Theme Client Chose"
decor = gets.chomp.capitalize

#Variables put in client hash
client[:"Client Name"] = name
client[:"Age"] = age
client[:"Number of Children"] = children_num
client[:"Choice of Decor"] = decor

#Print hash out to screen
puts "Here is the information provided by #{name}:"
	client.each do |key, value|
		puts "#{key}: #{value}"
end

#Give user the opportunity to update a key (no need to loop)
puts "Would you like to update anything? (yes/no)"
	input = gets.chomp.downcase
		if input == "no"
			puts "Your profile is now complete. Thank you for your business!"
		elsif input == "yes"
			puts "What would you like to update?"
			options = client.keys
			options.length.times do |iterate|
			p "Enter #{iterate+1} to update #{options[iterate]}"
		end
			selection = gets.chomp
		if selection == "1"
				puts "Enter Client Name"
				name = gets.chomp.capitalize
				client[:"Client Name"] = name
			elsif selection == "2"
				puts "Enter Client Age"
				age = gets.chomp.to_i
				client[:"Age"] = age
			elsif selection == "3"
				puts "Enter How Many Children Client Has"
				children_num = gets.chomp.to_i
				client[:"Number of Children"] = children_num
			elsif selection == "4"
				puts "Enter Decor Theme Client Chose"
				decor = gets.chomp.capitalize
				client[:"Choice of Decor"]
		end

#Print the latest version of the hash, and exit the program
puts "Your profile is now complete. Thank you for your business! See your profile summary below"
	client.each do |key, value|
		puts "#{key}: #{value}"
	end
end