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

User will need Ruby 







### Logic of the application

---







### Installation

---

**Ruby**

To use To-do List, you will need to install Ruby 2.7.5 or over.

**Dependencies**





**System/hardware requirements**





**Steps in details**





### Code style guide 

---



Identify any or styling conventions that the application will adhere to.

Reference the chosen style guide appropriately.





features of the application.

- 
- Steps to install the application

dependencies required by the application;
