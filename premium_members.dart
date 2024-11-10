import 'book.dart';
import 'user.dart';

class PremiumMembers extends User {
  double discountRate = 0.1;
  int borrowLimit = 5;

  PremiumMembers(String userName, int membershipNumber)
      : super(name: userName, membershipNumber: membershipNumber);

  @override
  void borrowBook(Book book) {
    if (borrowedBooks.length < borrowLimit) {
      borrowedBooks.add(book);
      print(
          "$name (مستخدم مميز)قام ياستعارة الكتاب:${book.title}بخصم${discountRate * 100}%");
    } else {
      print("$name لا يمكن استعارة اكثر من$borrowLimit كتاب");
    }
  }

  @override
  void returnBook(Book book) {
    borrowedBooks.remove(book);
    print("$name (مستخدم مميز)فام بارجاع الكتاب:${book.title}");
  }
}
