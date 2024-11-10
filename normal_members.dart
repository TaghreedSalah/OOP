import 'book.dart';
import 'user.dart';

class NormalMembers extends User {
  int _borrowLimit = 3;

  NormalMembers(String userName, int membershipNumber)
      : super(name: userName, membershipNumber: membershipNumber);

  @override
  void borrowBook(Book book) {
    if (borrowedBooks.length < _borrowLimit) {
      borrowedBooks.add(book);
      print("${book.title}:$name قام باستعارة الكتاب");
    } else {
      print("$name لا يمكن استعارة اكثر من$_borrowLimit كتاب");
    }
  }

  @override
  void returnBook(Book book) {
    borrowedBooks.remove(book);
    print("$name فام بارجاع الكتاب:${book.title}");
  }
}
