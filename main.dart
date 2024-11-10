import 'book.dart';
import 'library.dart';
import 'normal_members.dart';

void main() {
  NormalMembers user1 = NormalMembers('سعاد', 1);
  //NormalMembers user2 = NormalMembers('عاد', 3);
  Book b1 = Book();
  Book b2 = Book();
  Book b3 = Book();

  Library library = Library();
  b1.title = 'Flutter 2002';
  b1.author = 'احمد';
  b1.publicationYear = 2004;
  b1.title;
  b1.author;
  b1.publicationYear;
  b2.title = 'Dart';
  b2.author = 'Taghreed';
  b2.publicationYear = 2030;
  b2.author;
  b2.publicationYear;
  b2.title;
  b3.title = 'C++';
  b3.author = 'Mazen';
  b3.publicationYear = 2032;
  b3.author;
  b3.publicationYear;
  b3.title;
  library.addBook(b1);
  library.addBook(b2);
  library.addBook(b3);

  //user2.borrowBook(b1);
  //user1.borrowBook(b1);
  var bookToBorrow = library.searchBook('Dart');
  if (bookToBorrow != null) {
    user1.borrowBook(bookToBorrow);

    user1.returnBook(bookToBorrow);
  }

  //library.displayBooks();
  // library.updateBook(b1, b2);
  library.deleteBook("C++");
  library.displayBooks();
}
