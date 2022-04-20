require_relative './add_page'
require_relative './main_page'
require_relative './app'
require_relative 'todo_item'
require_relative 'delete_page'
require 'tty-prompt'

# app = App.new
# add_page = AddPage.new(app)
# add_page.run

app = App.new
app.add("shop tee", "l" )
app.add("see dr", "h")
app.add("buy milk", "l")

app.display_todo

delete_page = DeletePage.new(app)
delete_page.run

