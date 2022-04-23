require_relative './main_page'


main_page = MainPage.new

# set ARGV[0] = "display_sort" to sort to_do_list by priority
main_page.run(ARGV[0])


