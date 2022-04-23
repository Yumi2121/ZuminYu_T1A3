require_relative './todo_item'
require 'json'


class App
  attr_reader :to_do_list, :search_result

  def initialize
    @to_do_list = []
  end

  def load
    begin
      file = File.read('data.json')

      dict = JSON.parse(file)
      to_do_list_as_json = dict['todo_list']
      @to_do_list = []

      for todo_as_json in to_do_list_as_json
        todo_name = todo_as_json["todo_name"]
        high_priority = todo_as_json["high_priority"]

        todo_item = TodoItem.new(todo_name, high_priority)

        @to_do_list << todo_item
      end

    rescue
      # No file to load
      return
    end
  end

  def save
    todo_list_as_json = []
    for todo in @to_do_list
      todo_list_as_json << { "todo_name": todo.todo_name, "high_priority": todo.high_priority }
    end
    dict = {'todo_list': todo_list_as_json}
    File.write('data.json', JSON.dump(dict))
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
      true
    else
      false
    end
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





