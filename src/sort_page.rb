require_relative '../src/app'
require_relative '../src/todo_item'
require 'colorize'

class SortPage

  def initialize(app)
    @app = app
  end

  def run
    puts "Please see below update to-do list by priority.".colorize(:blue)

    puts @app.sort

    puts "-----------------"
    puts "-----------------"
    puts "Press Enter back to mainpage.".colorize(:blue)
    gets
  end
end

