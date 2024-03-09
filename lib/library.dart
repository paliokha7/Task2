import 'package:task2/book.dart';

class Library {
  List<Book> booksList = [];
  Map<int, Book> booksMap = {};
  Set<Book> booksSet = {};

  void addBookToList(Book book) {
    booksList.add(book);
  }

  void addBookToMap(Book book) {
    booksMap[book.id] = book;
  }

  void addBookToSet(Book book) {
    booksSet.add(book);
  }

  void removeBookFromList(Book book) {
    booksList.remove(book);
  }

  void removeBookFromMap(Book book) {
    booksMap.remove(book.id);
  }

  void removeBookFromSet(Book book) {
    booksSet.remove(book);
  }

  void printBooksList() {
    assert(booksList.isNotEmpty, 'Book list is empty');

    for (var book in booksList) {
      book.getBookDescription()();
    }
  }

  void printBooksSet() {
    for (var book in booksSet) {
      book.getBookDescription()();
    }
  }

  void printBooksById() {
    booksMap.forEach((key, value) {
      print('$key:$value');
    });
  }
}
