require_relative '../src/app'
require_relative '../src/todo_item'
require_relative '../src/add_page'
require_relative '../src/delete_page'
require 'tty-font'
require 'colorize'
require 'tty-box'


class MainPage

  def initialize
    @app = App.new
    @app.add("shop tee", "l" )
    @app.add("see dr", "h")
    @app.add("buy milk", "l")
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
      puts "4. Display the to-do list by date."
      puts "5. Exit".colorize(:yellow)
      choice = gets.chomp

      case choice
        when "1"
          show_add_page
        when "2"
          show_delete_page
        when "3"
          show_search_page
        when "4"
          display_todo
        when "5"
          break
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
    delete_page = DeletePage.new(@app)
    delete_page.run
  end

  def show_search_page
    puts "search"
  end

  def display_todo
    @app.display_todo

    puts "\npress Enter to go back to main page"
    gets

    system('clear')
  end
end

