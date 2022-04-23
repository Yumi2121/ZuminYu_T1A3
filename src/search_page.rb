require_relative '../src/app'
require_relative '../src/todo_item'
require 'colorize'

class SearchPage
  def initialize(app)
    @app = app
  end

  def run
    puts "Please type a keyword to help locate the to-do items that you try to find.".colorize(:blue)
    choice = $stdin.gets.chomp

    # return the search result as an to-do item array
    puts @app.search(choice)

    puts "-----------------"
    puts "-----------------"
    puts "Press anything back to mainpage."
    gets
  end
end
