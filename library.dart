import 'book.dart';

class Library {
  List<Book> books = [];
  addBook(Book book) {
    books.add(book);
    print(":تمت اضافة كتاب\n ${book.title}");
  }

  deleteBook(String title) {
    books.removeWhere((book) => book.title == title);
    print(":تمت ازالة الكتاب\n${title}");
  }

  Book? searchBook(String title) {
    for (var book in books) {
      if (book.title == title) {
        return book;
      }
    }

    print(":الكتاب بعنوان $titleغير موجود.");

    return null;
  }

  updateBook(Book oldBook, Book newBook) {
    int index = books.indexOf(oldBook);
    if (index != -1) {
      books[index] = newBook;
      print("${newBook.title}:تم تحديث معلومات الكتاب الى ");
    } else {
      print("لم يتم العثور على الكتاب للتحديث؟");
    }
  }

  void displayBooks({Book? b}) {
    print("----:الكتب المتوفرة في المكتبة");
    for (var book in books) {
      print(book);
    }
  }
}
