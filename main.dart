//create a "Book" class with three variables: "id", "title" and "borrowed"
class Book {
  int id;
  String title;
  bool borrowed;
  Book(this.id, this.title, this.borrowed);

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
  User(this.id, this.name);

  void displayInfo() {
    print("User id is: ${this.id}");
    print("User name is: ${this.name}");
  }
}

//create "Library" class with two lists: a list of books and another list of users
class Library {
  List<Book>? books = [];
  List<User>? users = [];

  void addBook(int id, String title) {
    Book book = Book(id, title, false);
    this.books!.add(book);
  }

  void addUser(int id, String name) {
    User user = User(id, name);
    this.users!.add(user);
  }

  //create "returnBook" method to return a borrowed book
  void returnBook(int bookId, int userId, String username) {
    //make a "for loop" to iterate in the books list
    for (var book in this.books!) {
      //check if the current book id equals to the required book id and the book already borrowed
      if (book.id == bookId && book.borrowed) {
        //iterat in the users list
        for (var user in this.users!) {
          //check if the current user id equals to the required user id and the current username equals to the required name
          if (user.id == userId && user.name == username) {
            book.borrowed = false;
            print(
                "Book with id: $bookId returned successfully from user no.$userId with name: $username");
            break;
          }
        }
      }
    }
  }

  //create "borrowBook" method borrow a book from the library using the book id, user info
  void borrowBook(int bookId, int userId, String username) {
    for (var book in this.books!) {
      if (book.id == bookId && !book.borrowed) {
        for (var user in this.users!) {
          if (user.id == userId && user.name == username) {
            book.borrowed = true;
            print(
                "Book with id: $bookId borrowed successfully to user no.$userId with name: $username");
            break;
          }
        }
      }
    }
  }

  //create "displayInfo" method to print all the info about books and users of the library
  void displayInfo() {
    print("Here's a list of our books");
    for (var book in this.books!) {
      print("Book id is: ${book.id}");
      print("Book title is: ${book.title}");
      (book.borrowed)
          ? print("Book case is: borrowed")
          : print("Book case is: not borrowed");
      print("---------------------------");
    }
    print("------------------------------------------------------------");
    print("Here's a list of our users");
    for (var user in this.users!) {
      print("User id is: ${user.id}");
      print("User name is: ${user.name}");
      print("---------------------------");
    }
  }
}

void main() {
  Library library = Library();

  library.addBook(1, "Sports");
  library.addBook(2, "Life");
  library.addBook(3, "Swimming");

  library.addUser(1, "Ali");
  library.addUser(2, "Khaled");
  library.addUser(3, "Mona");

  //borrow some books from library, some of them are valid and some are not valid
  library.borrowBook(1, 5, "Ali");
  library.borrowBook(3, 2, "Khaled");
  library.borrowBook(3, 3, "Mona");
  library.borrowBook(1, 1, "Ali");
  library.borrowBook(2, 1, 'Alaa');

  //return borrowed books to the library, some of them are valid and some are not
  library.returnBook(3, 2, "Khaled");
  library.returnBook(2, 1, "Ali");
  library.returnBook(1, 1, "Ali");

  library.displayInfo();
}
