require_relative '../src/app'
require_relative '../src/todo_item'


class AddPage

  def initialize(app)
    @app = app
  end

  def run()
    puts "enter todo name"
    todo_name = gets
    @app.add(todo_name, importance)
  end

end
