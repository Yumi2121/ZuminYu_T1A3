require_relative './app'

class App
  attr_reader :to_do_list, :search_result

  def initialize
    @to_do_list = []

  end

  def add(todo_name, high_priority)
    # create the single to_do list
    add_todo = TodoItem.new(todo_name, high_priority)
    # push the new generated to_do to array of todo_list
    @to_do_list << add_todo
  end

  def sort
    return @to_do_list.sort_by {|todo| todo.high_priority ? 0 : 1 }
  end

  def list
    return @to_do_list
  end

  def display_todo
    @to_do_list.each_with_index do |todo_list, index|
      puts "#{index + 1}. #{todo_list}"
    end
    total_num = @to_do_list.length
    puts "------------------total #{total_num} items."
  end

  def delete(index)
    if index < @to_do_list.length && index >= 0
      @to_do_list.delete_at(index)
      return true
    end
    return false
  end


  def search(keyword)
    search_result = []
    for todo_item in @to_do_list
      if todo_item.todo_name.include? keyword
        search_result << todo_item
      end
    end
    return search_result
  end

end





