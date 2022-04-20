require_relative '../src/app'
require_relative '../src/todo_item'



app_test = App.new

app_test.add("shopping", false)
app_test.add("see dr", true)
app_test.add("shopping shoes", false)
app_test.add("shop visit", true)

app_test.delete(1)

# puts app_test.search("shop")

app_test.display_todo

# for index in 0..(app_test.list.length - 1)
#   puts "#{index + 1}. #{app_test.list[index]}"
# end




