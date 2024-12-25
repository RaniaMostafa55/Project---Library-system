//create a "Book" class with three variables: "id", "title" and "borrowed"
class Book {
  int id;
  String title;
  bool borrowed;
  //create class constructor to assign values to class variables
  Book(this.id, this.title, this.borrowed);
  //create "displayInfo" method to display info about the book: id, title and borrowed or not
  void displayInfo() {
    print("Book id is: ${this.id}");
    print("Book title is: ${this.title}");
    (this.borrowed) ? print("Book is borrowed") : print("Book is not borrowed");
  }
}

//create "User" class with two variables: "id" and "name"
class User {
  int id;
  String name;
  //create class constructor to assign values to class variables
  User(this.id, this.name);
  //create "displayInfo" method to display info about the user: id and name
  void displayInfo() {
    print("User id is: ${this.id}");
    print("User name is: ${this.name}");
  }
}

//create "Library" class with two lists: a list of books and another list of users
class Library {
  List<Book>? books = [];
  List<User>? users = [];
  //create "addBook" method to add a book to the library using its id and title
  void addBook(int id, String title) {
    //create an object of the "Book" class using id and title
    Book book = Book(id, title, false);
    //add the created object to the list of books
    this.books!.add(book);
  }

  //create "addUser" method to add a usere to the library using its id and name
  void addUser(int id, String name) {
    //create an object of the "User" class using id and name
    User user = User(id, name);
    //add the created object to the list of users
    this.users!.add(user);
  }

  //create "returnBook" method to return a borrowed book using the book id, user id and username
  void returnBook(int bookId, int userId, String username) {
    //make a "for loop" to iterate in the books list
    for (var book in this.books!) {
      //check if the current book id equals to the required book id and the book already borrowed
      if (book.id == bookId && book.borrowed) {
        //make a "for loop" to iterate in the users list
        for (var user in this.users!) {
          //check if the current user id equals to the required user id and the current username equals to the required username
          if (user.id == userId && user.name == username) {
            //convert the status of the book to "false" which means "not borrowed or available now"
            book.borrowed = false;
            //print a message to tell the user that the book is returned successfully
            print(
                "Book with id: $bookId returned successfully from user no.$userId with name: $username");
            //stop the loop as we found what we searched for
            break;
          }
        }
      }
    }
  }

  //create "borrowBook" method borrow a book from the library using the book id, user id and username
  void borrowBook(int bookId, int userId, String username) {
    //make a "for loop" to iterate in the books list
    for (var book in this.books!) {
      //check if the current book id equals to the required book id and the book is not borrowed
      if (book.id == bookId && !book.borrowed) {
        //make a "for loop" to iterate in the users list
        for (var user in this.users!) {
          //check if the current user id equals to the required user id and the current username equals to the required username
          if (user.id == userId && user.name == username) {
            //convert the status of the book to "true" which means "borrowed or not available now"
            book.borrowed = true;
            //print a message to tell the user that the book is borrowed successfully
            print(
                "Book with id: $bookId borrowed successfully to user no.$userId with name: $username");
            //stop the loop as we found what we searched for
            break;
          }
        }
      }
    }
  }

  //create "displayInfo" method to print all the info about books and users of the library
  void displayInfo() {
    //print books info
    print("Here's a list of our books");
    //make a "for loop" to iterate in the books list
    for (var book in this.books!) {
      //print each book id, title and case which means if it's borrowed or not
      print("Book id is: ${book.id}");
      print("Book title is: ${book.title}");
      (book.borrowed)
          ? print("Book case is: borrowed")
          : print("Book case is: not borrowed");
      print("---------------------------");
    }
    print("------------------------------------------------------------");
    //print users info
    print("Here's a list of our users");
    //make a "for loop" to iterate in the users list
    for (var user in this.users!) {
      //prnit each user id and name
      print("User id is: ${user.id}");
      print("User name is: ${user.name}");
      print("---------------------------");
    }
  }
}

void main() {
  //create object "library" from class "Library"
  Library library = Library();
  //add some books to the library using "addBook" method
  library.addBook(1, "Sports");
  library.addBook(2, "Life");
  library.addBook(3, "Swimming");

  //add some users to the library using "addUser" method
  library.addUser(1, "Ali");
  library.addUser(2, "Khaled");
  library.addUser(3, "Mona");
  //borrow some books from library using "borrowBook" method, some of them are valid and some are not valid
  library.borrowBook(1, 5, "Ali");
  library.borrowBook(3, 2, "Khaled");
  library.borrowBook(3, 3, "Mona");
  library.borrowBook(1, 1, "Ali");
  library.borrowBook(2, 1, 'Alaa');
  //return borrowed books to the library using "returnBook" method, some of them are valid and some are not valid
  library.returnBook(3, 2, "Khaled");
  library.returnBook(2, 1, "Ali");
  // library.returnBook(1, 1, "Ali");
  //display all the library books and users info using "displayInfo" method
  library.displayInfo();
}
