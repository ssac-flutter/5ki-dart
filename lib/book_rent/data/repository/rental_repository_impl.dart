import '../model/rental.dart';
import 'rental_repository.dart';

class RentalRepositoryImpl implements RentalRepository {

  final List<Rental> _rentals = [];

  @override
  Rental findById(int id) {
    return _rentals.firstWhere((e) => e.id == id);
  }

  @override
  List<Rental> findAll() {
    return _rentals;
  }

  @override
  Rental upsertRental(Rental rental) {
    final index = _rentals.indexWhere((e) => e.id == rental.id);

    if (index == -1) {
      _rentals.add(rental);
    } else {
      _rentals[index] = rental;
    }

    return rental;
  }

  @override
  void deleteRental(int id) {
    _rentals.removeWhere((e) => e.id == id);
  }
}