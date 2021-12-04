
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'account_provider.dart';
import 'movie_provider.dart';

final accountProvider = ChangeNotifierProvider<AccountProvider>((ref) {
  return AccountProvider();
});

final moviesProvider = ChangeNotifierProvider<MoviesProvider>((ref) {
  return MoviesProvider();
});

