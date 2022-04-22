require_relative './main_page'


main_page = MainPage.new
# main_page.user_input
# set ARGV[0] = "display_sort" to sort to_do_list by priority
main_page.run(ARGV[0])

