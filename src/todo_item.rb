require_relative './app'

class TodoItem
  attr_accessor :todo_name, :high_priority

  def initialize(todo_name, high_priority)
    @todo_name = todo_name
    @high_priority = high_priority
  end

  def to_s
    if @high_priority
      high_priority_display = "high priority"
    else
      high_priority_display = "low priority"
    end

    return "#{@todo_name} - #{high_priority_display}"
  end

end

