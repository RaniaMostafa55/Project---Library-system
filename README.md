Library system

A new Dart project.

## Getting Started

This project helps you mimic library system with these steps:
1. Create a "Book" class with three variables: "id", "title" and "borrowed" which detects if the book is borrowed or not
2. Create the constructor of the class to asign values to the three variables
3. Create a method inside the class which displays the info of the book: its id, title and borrowed or not
4. Create another class called "User" with two variables: "id" and "name"
5. Create the constructor of the class to asign values to the three variables
6. Create a method inside the class which displays the info of the user: his id and name
7. Create a "Library" class with two lists: books list of type "Book" and users list of type "User"
8. Create multiple methods inside "Library" class
9. The first method "addBook" requires id and title to create an object of the "Book" class using them and then add it to the books list. Note that the value of borrowed variable is set to false because the book is just added now and couldn't be borrowed
10. The method "addUser" requires id and name to create an object of the "User" class using them and then add it to the users list
11. The method "returnBook" requires book id, user id and username, it iterates in the books list using "for loop" to check if any book has the same required id and is already borrowed, if it's found, iterate in the users list using "for loop" to check if any user has the same required id and name, if so, change the status of the book to be "not borrowed", print a message to say that the book is returned successfully and then stop the loop using "break" statement
12. The method "borrowBook" requires book id, user id and username, it iterates in the books list using "for loop" to check if any book has the same required id and is not borrowed, if it's found, iterate in the users list using "for loop" to check if any user has the same required id and name, if so, change the status of the book to be "borrowed", print a message to say that the book is borrowed successfully and then stop the loop using "break" statement
13. The method "displayInfo" displays all the info about the books and users of the library as it iterates in the books list using "for loop" to pring each book id, title and if it's borrowed or not based on the value of "borrowed" variable, then, it iterates in the users list using "for loop" to print each user id and name
14. Create the "main" function. Inside it, create an object called "library" from the class "Library".
15. Use the "library" object to add some books with "addBook" method and add some users with "addUser" method
16. Then use "borrowBook" method to borrow some books, some of them is valid and can borrow books successfully and some are not available due to entering incorrect id or username, or needing already borrowed book
17. Then use "returnBook" method to return borrowed books, the first one is valid but the second one is not because the book is not borrowed
18. Finally, use the "displayInfo" method to print all the books and users info as mentioned before