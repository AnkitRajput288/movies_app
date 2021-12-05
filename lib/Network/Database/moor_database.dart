import '../../Model/movies.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'moor_database.g.dart';

// This annotation tells the code generator which tables this DB works with
@UseMoor(tables: [Movies])
// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase()
  // Specify the location of the database file

      : super((FlutterQueryExecutor.inDatabaseFolder(
    path: 'db.sqlite',
    // Good for debugging - prints SQL in the console
    logStatements: true,
  )));

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 1;

  Future<List<Movie>> getAllMovies() => select(movies).get();
  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<Movie>> watchAllMovies() => select(movies).watch();

  Future insertMovie(Movie movie) => into(movies).insert(movie);

  Future batchInsert(List<Movie> listOfMovies) => batch((batch) {
    batch.insertAll(movies, listOfMovies);
  });
  // Updates a Task with a matching primary key
  Future<bool> updateMovie(Movie movie) => update(movies).replace(movie);
  Future<bool> movieWatched(Movie movie) => update(movies).replace(movie.copyWith(isMovieWatched: true));
  Future<bool> movieNotWatched(Movie movie) => update(movies).replace(movie.copyWith(isMovieWatched: false));


  Future deleteMovie(Movie movie) => delete(movies).delete(movie);
}