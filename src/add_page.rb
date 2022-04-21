require_relative '../src/app'
require_relative '../src/todo_item'


class AddPage

  def initialize(app)
    @app = app
  end

  def run
    loop do
      puts "Please enter todo name."
      todo_name = gets.strip

      # begin
        puts "please enter the priority of this todo. if it's high priority, please type 'h', otherwise type 'l'."
        high_priority = gets.chomp.downcase
        if high_priority == "h"
          high_priority_value = true
        elsif high_priority == "l"
          high_priority_value = false
        end
       # rescue StandardError => e
       #  puts "An error occurred: #{e.inspect} "
       #  retry
      end

     @app.add(todo_name, high_priority_value)

     puts "Do you want to add more todo? (y/n) "
     choice = gets.chomp.downcase
     if choice == "n"
       break
     end
    end
  end
end
