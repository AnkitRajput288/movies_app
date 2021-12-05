import 'package:moor/moor.dart';

class Movies extends Table{

  IntColumn get id => integer().autoIncrement()();
  TextColumn get image => text()();
  TextColumn get name => text()();
  TextColumn get detail => text()();
  IntColumn get directorID => integer()();
  BoolColumn get isMovieWatched => boolean().withDefault(const Constant(false))();

}