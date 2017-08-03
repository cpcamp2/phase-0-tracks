class TodoList

def initialize(todo_list_array)
  @todo_list_array = todo_list_array
end

def get_items
  @todo_list_array
end

def add_item(new_item)
  @todo_list_array << new_item
end

def delete_item(item_remove)
  @todo_list_array.delete(item_remove)
end

def get_item(index_number)
  @todo_list_array[index_number]
end

end