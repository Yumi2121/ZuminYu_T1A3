require_relative '../src/app'
require_relative '../src/todo_item'
require 'tty-prompt'

class DeletePage

  def initialize(app)
    @app = app
  end

  def run
    puts "Please type the number of todo that you about to delete."
    choice = gets.chomp.to_i

    if @app.delete(choice - 1)
      puts "The selected to-do has been deleted, list updated below"
    else
      puts "Invalid choice!"
    end
  end
end