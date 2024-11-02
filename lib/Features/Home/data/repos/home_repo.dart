import 'package:book_c/core/errors/feilures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Feilure, List<BookModel>>> fetchBestSellerBook();
  Future<Either<Feilure, List<BookModel>>> fetchFeaturedBook();
}
