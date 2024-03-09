mixin BookLanguage {
  void language() => print('This is book on enlgish');
}

class Book with BookLanguage {
  static int _nextId = 0;
  final int _id;
  String? name;
  String? author;
  int? year;

  Book({this.name, String? author, this.year})
      : author = author ?? 'Author undefined',
        _id = _nextId++; //Використання операторів "синтаксичного цукру"

  factory Book.defaultBook() {
    return Book(name: 'Clean code', author: 'Robert M.', year: 2008);
  }

  //Використання лямбда-функцій, замикань
  Function getBookDescription() {
    return () => print('Book $name written by $author and published in $year');
  }

  int get id => _id;

  @override
  String toString() {
    return ' Book: $name, Author: $author, Рublished: $year';
  }
}
