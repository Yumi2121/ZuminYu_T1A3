require_relative '../src/app'
require_relative '../src/todo_item'

class SortPage

  def initialize(app)
    @app = app
  end

  def run
    puts "Please see below update to-do list by priority."

    puts @app.sort

    puts "-----------------"
    puts "-----------------"
    puts "Press anything back to mainpage."
    gets
  end
end

