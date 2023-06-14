import '../model/rental.dart';

abstract interface class RentalRepository {
  Rental? findById(int id);

  List<Rental> findAll();

  Rental upsertRental(Rental rental);

  void deleteRental(int id);
}