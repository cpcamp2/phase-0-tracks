# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create empty hash named "list"
  # .split the string based on ","
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
  # print list to the console
# output: [hash]

def create_list(items)
    list = {}
    items.split(' ').each do |item|
        list[item] = 1
    end
    p list
end

shopping_list = create_list("")

# Method to add an item to a list
# input:
    # list - {} to start
    # item name - Label
    # optional quantity - Value
# steps:
    #Def method add_item(list, item, quantity = 1)
    #Use IF/ELSE loop to add incremental quantity increase for duplicate items
    #print list
# output:
    #Updated list

def add_item(list, item, quantity)
    list[item] = quantity
    p list
end

#Test below
#add_item(shopping_list, "watermelon", 1)



# Method to remove an item from the list
# input:
    # hash
    # item
# steps:
    #delete item from list
# output:
    #updated list

def remove_item(list, item)
    list.delete(item)
    p list
end

#Test below
#remove_item(shopping_list, "watermelon")


# Method to update the quantity of an item
# input:
    #hash
    #item
    #new quantity
# steps:
    #replace old label and quantity with
# output: new quantity

def update_quantity(list, item, quantity)
    list[item] = quantity
    p list
end

#Test below
#update_quantity(shopping_list, "carrots", 12)
# update_quantity(shopping_list, "Lemonade", 2)
# update_quantity(shopping_list, "Tomatoes", 3)
# update_quantity(shopping_list, "Icecream", 4)

# Method to print a list and make it look pretty
# input:
    #hash
# steps:
    #hash.each
# output:
    #pretty list

def pretty_list(list)
    puts "This is your grocery list:"
    list.each do |item, quantity|
    puts "#{quantity} #{item}"
    end
end

#Test below
#p pretty_list(shopping_list)

#Release 2
add_item(shopping_list, "Lemonade", 2)
add_item(shopping_list, "Tomatoes", 3)
add_item(shopping_list, "Onions", 1)
add_item(shopping_list, "Ice Cream", 4)

remove_item(shopping_list, "Lemonade")
update_quantity(shopping_list, "Ice Cream", 1)

p pretty_list(shopping_list)


=begin

What did you learn about pseudocode from working on this challenge?
I learned that it helps you work through the steps of the project before actually coding it. It makes codinng wayyyy easier and to determine what works and what doesn't.

What are the tradeoffs of using arrays and hashes for this challenge?
I think using arrays for this challenge wouldn't have made much sense considering there was both a key and value for said key.

What does a method return?
It returns the value.

What kind of things can you pass into methods as arguments?
Any sort of value, key, hash, basically anything.

How can you pass information between methods?
an input taken as an argument then whatever method you determine to get the output you want.

What concepts were solidified in this challenge, and what concepts are still confusing?
Determining methods that take an input variable and gives you an output variable. I really struggled with this last week on the practice assessment for this was a great experience! I still feel a little bit confused about refactoring.

=end