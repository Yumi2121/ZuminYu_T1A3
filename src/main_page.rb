require_relative '../src/app'
require_relative '../src/todo_item'
require_relative '../src/add_page'
require_relative '../src/delete_page'
require_relative '../src/search_page'
require_relative '../src/sort_page'
require 'tty-font'
require 'colorize'
require 'tty-box'


class MainPage

  def initialize
    @app = App.new
    @app.load
    # @app.add("shop tee", false)
    # @app.add("see dr", true)
    # @app.add("buy milk", true)
  end


  def get_user_input
    font = TTY::Font.new(:starwars)
    puts font.write("To-do-list").yellow
    puts "Welcome to MY To do List, Let us get started!".colorize(:blue)

    loop do
      puts "----------------------------------"
      puts @app.display_todo
      puts TTY::Box.frame "What would you like to do?".colorize(:yellow)
      puts "1. Add a to-do."
      puts "2. Delete a to-do from the list."
      puts "3. Search to-do by keyword."
      puts "4. Sort to-do list."
      puts "5. Display the to-do list by date."
      puts "6. Exit".colorize(:yellow)
      choice = $stdin.gets.chomp

      case choice
        when "1"
          show_add_page
        when "2"
          show_delete_page
        when "3"
          show_search_page
        when "4"
          show_sort_page
        when "5"
          display_todo
        when "6"
          save
          break
        else
          puts "Invalid choice!"
      end
    end
  end

  def run(command)
    if command == "display_sort"
      puts @app.sort
    else
      get_user_input
    end
  end

  def show_add_page
    add_page = AddPage.new(@app)
    add_page.run
  end

  def show_delete_page
    delete_page = DeletePage.new(@app)
    delete_page.run
  end

  def show_search_page
    search_page = SearchPage.new(@app)
    search_page.run
  end

  def show_sort_page
    sort_page = SortPage.new(@app)
    sort_page.run
  end

  def display_todo
    @app.display_todo

    puts "\npress Enter to go back to main page"
    $stdin.gets

    system('clear')
  end

  def save
    @app.save
  end
end

