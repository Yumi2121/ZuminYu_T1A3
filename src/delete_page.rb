require_relative '../src/app'
require_relative '../src/todo_item'
require 'tty-prompt'
require 'colorize'

class DeletePage

  def initialize(app)
    @app = app
  end

  def run
    puts "Please type the number of todo that you about to delete.".colorize(:blue)
    choice = $stdin.gets.chomp.to_i

    if @app.delete(choice - 1)
      puts "The selected to-do has been deleted, list updated below".colorize(:blue)
    else
      puts "Invalid choice!".colorize(:blue)
    end
  end
end