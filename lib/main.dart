import 'package:task2/book.dart';
import 'package:task2/books.dart';
import 'package:task2/library.dart';

void main() {
  //Конструктор інізцалізації з міксином
  var book = Book(name: 'Clean code', author: null, year: 2008)..language();
  var standartBookDescription = book.getBookDescription();
  standartBookDescription();

  //Фабричний конструктор
  final factoryBook = Book.defaultBook();
  var factoryBookDescription = factoryBook.getBookDescription();
  factoryBookDescription();

  //Робота з колекціями
  Library library = Library();
  Books books = Books();

  //List
  //library.addBookToList(books.book2);
  //library.addBookToList(books.book3);

  //library.removeBookFromList(books.book2);

  library.printBooksList();

  //Set
  library.addBookToSet(books.book4);

  //Додаваня такого самого елемента, але це не вийде тому що Set містить тількі унікальні елементи
  library.addBookToSet(books.book4);

  library.printBooksSet();

  //Map
  library.addBookToMap(books.book1);
  library.addBookToMap(books.book2);
  library.addBookToMap(books.book3);

  library.removeBookFromMap(books.book3);

  library.printBooksById();
}
