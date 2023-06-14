import '../../data/model/book.dart';
import '../../data/repository/book_repository.dart';

class BookManageModel {
  final BookRepository _bookRepository;

  BookManageModel(this._bookRepository);

  void addBook(String title, String author) {
    _bookRepository.upsertBook(Book(title: title, author: author));
  }

  void deleteBook(int id) {
    _bookRepository.deleteBook(id);
  }

  List<Book> getAllBooks() => _bookRepository.findAll();
}
