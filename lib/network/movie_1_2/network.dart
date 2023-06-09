import 'package:dart_basic/network/movie_1_2/movie_api.dart';

void main() async {
  final movieApi = MovieApi();

  // final movies = await movieApi.getMovies();
  // print(movies);

  final movieDetail = await movieApi.getMovieDetail(569094);
  print(movieDetail);
  print(movieDetail.title);
}
