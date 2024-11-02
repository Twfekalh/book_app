import 'package:book_c/Features/Home/data/repos/home_repo.dart';
import 'package:book_c/core/errors/feilures.dart';
import 'package:book_c/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeReopImpl implements HomeRepo {
  final ApiService apiService;

  HomeReopImpl(this.apiService);
  @override
  Future<Either<Feilure, List<dynamic>>> fetchBestSellerBook() async {
    try {
      var data = await apiService.get(endPoint: '');

      List<BookModel> books = [];
      for (var itwm in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right('books');
    } on Exception catch (e) {
      return left(ServerFailer());
    }
  }

  @override
  Future<Either<Feilure, List<dynamic>>> fetchFeaturedBook() {
    // TODO: implement fetchFeaturedBook
    throw UnimplementedError();
  }
}
