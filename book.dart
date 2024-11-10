import 'to_string.dart';

class Book implements ToString {
  late String _title, _author;
  late int _publicationYear;

  set title(String title) => _title = title;
  set author(String author) => _author = author;
  set publicationYear(int publicationYear) =>
      _publicationYear = publicationYear;
  String get title => _title;
  String get author => _author;
  int get publicationYear => _publicationYear;
  @override
  String toString() {
    return " $_title :عنوان الكتاب\n $_author:المولف\n$_publicationYear :سنة النشر";
  }
}
