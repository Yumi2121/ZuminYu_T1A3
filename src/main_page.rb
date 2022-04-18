require_relative '../src/app'
require_relative '../src/todo_item'
require_relative '../src/add_page'

class MainPage

  def initialize
    @app = App.new
  end

  def display_todo
    for index in 0..(@app.list.length - 1)
      puts "#{index + 1}. #{@app.list[index]}"
    end
  end

  def get_user_input
    puts "Welcome to use To-do-list, let's get start!"

    loop do
      puts "----------------------------------"
      puts "What would you like to do?"
      puts "1. Add a to-do."
      puts "2. Delete a to-do from the list."
      puts "3. Search to-do by keyword."
      puts "4. Sort the to-do list by priority."
      puts "5. Exit"
      choice = gets.chomp

      case choice
        when "1"
          show_add_page
        when "2"
          show_delete_page
        when "3"
          show_search_page
        when "4"
          sort_list_by_priority
        when "5"
          puts "Exit"
      else
        puts "Invalid choice!"
      end
    end
  end

  def run
    get_user_input
  end

  def show_add_page
    add_page = AddPage.new(@app)
    add_page.run
  end

  def show_delete_page
    puts "delete"
  end

  def show_search_page
    puts "search"
  end

  def sort_list_by_priority
    puts "sort"
  end

end

