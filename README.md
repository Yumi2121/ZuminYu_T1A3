# My To-do List - Terminal Application
##### by Zumin Yu

https://github.com/Yumi2121/ZuminYu_T1A3

The purpose of this app is to help people manage tasks easily by using the command line in the computer. With the basic but powerful function built within this app, people will find it easy to add, delete, search, sort and save their to-do list on a daily basis. 

It's time to say Good-bye to the handwritten to-do list!



### **Functionality**- Features of the app

---

This app can be separated into two parts from code of view: Function and UX. All core functions are created under 2 classes TodoItem and App. Class App includes main functions of the app such as add, delete, search, sort. The UX part will focus on collecting user input and run each feature function.

![app file details](/Users/yumi/Documents/IT/Coder Academy/Term 1/Term 1 Assignment/T1A3/ZuminYu_T1A3/docs/app file details.png)

- **Feature one**: Add to-do item with priority

  The first feature, add todo, will allow users to add task name and its priority level. Class TodoItem designed for displaying the single to-do item with its 2 variables: todo_name and high_priority. High_priority is a boolean object that shows true or false value. If High_value is true, it will display “high_priority”, otherwise “low_priority” will be present.

  

  Class App created for holding this method, when you call the **add** method, the user input will be collected as a single to_do item and then this item will be added to an array of to_do_list.

  

- **Feature two**: Delete to-do item 

  The second feature, delete todo, will allow users to delete the selected task from the to-do list. When calling delete (index) method with a given index number, the selected index to-do item will be deleted from the list. This function will return an updated list without the selected to-do item. 

  This method also handles errors that only allow the given index to meet the following conditions `index < @to_do_list.length && index >= 0`. So that covered the exceptions from user input. 

  

- **Feature three**: search by keyword

  The search feature allows the user to provide a keyword(argument) and return a list of matching to-do items that includes the keyword. This function uses a for loop that check the keyword in every to-do item within the current to-do list, search result will then return as an array. 



- **Feature four**: sorting

  This sort feature will allow the user to sort the current to-do list by priority. The high-priority item will be moved to the front of the list, and the low-priority item will go to the back.

  This function also can be achieved by using `ARGV[0]` from command line directly. 

  

- **Feature five:** Save & Load the to-to list

  The To-do list can be saved when the user exits the app, and will be loaded when the user uses the app next time.

  The current data will be saved to the `data.json` file. `begin` and `rescue` is being used to handle the situation when the user runs the app for the first time, in which the data.json did not exist. 

  



### User Instructions

---

Users will start by running

```
./todo_list.sh [action]
```

 action is an optional argument with the possible value of `display_sort` to execute the *display_sort feature* to display the todo list sorted by high priority first. If it is not provided, the application will show a main menu to let the user enter an option to perform an appropriate feature.

You will see the greeting message when the app starts! Then there are 5 option provided:

1. **Add a to-do.** 

   Enter the todo_name.

   Enter the priority as ‘h’ for high priority or ‘l’ as low priority.

   Enter y to add more todo, or n to go back to main menu.

   

2. **Delete a to-do from the list.**

   Enter an index (start from 1) of todo to delete.

   List of todo will be displayed after deletion.

   

3. **Search to-do by keyword.**

   Enter a keyword to search for todo with a partially matched name.

   List of todo with the matched name will be displayed after search. 

   

4. **Sort to-do list.**

   List of todo will be displayed with high-priority todo items on top. 

   

5. **Display the to-do list by date.**

   List of todo will be displayed by the sequence of creation date, with number in front of todo item. 

   

6. **Exit.**

   Todo-list will be saved in a file and exit the app. 

   

   

### Logic of the application

---

When the application starts, an `app_start.rb` creates a MainPage class. MainPage creates an app object as it’s instance variable which contains the core logic of the whole application. run method is then executed by passing in the `ARGV[0]`. `ARGV[0]` is an argument which may be sent by user to execute sort todo list method. When `ARGV[0]` is not passed, run method will display the main menu and asks user to enter an option to perform each feature/command. 

Depending on which option is entered, an appropriate class (AddPage, DeletePage, SortPage, SearchPage) which represents each feature will be created, taking an app object as a parameter so they all will share the same app object. `Run` method on the appropriate Page class will be called to execute it’s feature by displaying an appropriate message, asking for user input, calling a respective method within app class and finally displaying the output on screen. Eg. AddPage will display a message asking user to enter a new todo_name and priority, asking them to enter the input, calling `app.add` to actually add the new todo into it’s list.In order for the application to retain the todo list when the application exit, MainPage calls `app.load` during initialisation which loads a `JSON` file containing a list of todo. This JSON file is created by save method (called by MainPage) when the application exit (user choose to exit).





### Code style guide 

---

My to-do List app is using Ruby language, and the code is written following the community Ruby Style Guide provided by Rubocop. 

[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)

[![Ruby Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rubystyle.guide)





### Installation

---

- **Ruby**

To use To-do List, you will need to install Ruby 2.7.5 or over.

- **Dependencies**

```
gem "rspec", "~> 3.11"

gem "colorize", "~> 0.8.1"

gem "logger", "~> 1.5"

gem "tty-font", "~> 0.5.0"

gem "tty-box", "~> 0.7.0"

gem "tty-prompt", "~> 0.23.1"
```



- **System/hardware requirements**

​       Computer with Linux system



- **Steps to install the application**

  1. install Ruby.

  2. install required gems as above by using below command.

     ```
     gem install bundler
     ```

  3. Run the shell script.

     ```
     ./todo_list.sh [action]
     ```

     

     
