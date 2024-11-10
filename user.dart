import 'book.dart';
import 'to_string.dart';

abstract class User implements ToString {
  late String name;
  int membershipNumber;
  List<Book> borrowedBooks = [];
  User({required this.name, required this.membershipNumber});

  void borrowBook(Book book);
  void returnBook(Book book);
  @override
  String toString() {
    return "اسم المستخدم:$name, رقم العضوية:$membershipNumber";
  }
}
