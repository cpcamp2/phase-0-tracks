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

shopping_list = create_list("Lemonade Tomatoes Onions Icecream")

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

def add_item(list, item, quantity = 1)
    list[item] = 1
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
update_quantity(shopping_list, "Lemonade", 2)
update_quantity(shopping_list, "Tomatoes", 3)
update_quantity(shopping_list, "Icecream", 4)

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

remove_item(shopping_list, "Lemonade")
update_quantity(shopping_list, "Icecream", 1)

p pretty_list(shopping_list)
