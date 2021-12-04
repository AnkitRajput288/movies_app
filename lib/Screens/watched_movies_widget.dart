import 'package:deepika_assignment/Network/Database/moor_database.dart';
import 'package:deepika_assignment/Screens/common_movies_list.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class WatchedMoviesWidget extends StatefulWidget {
  const WatchedMoviesWidget({Key? key}) : super(key: key);

  @override
  _WatchedMoviesWidgetState createState() => _WatchedMoviesWidgetState();
}

class _WatchedMoviesWidgetState extends State<WatchedMoviesWidget>{

  @override
  Widget build(BuildContext context,) {
    return _buildMainWidget();
  }

  Widget _buildMainWidget() {
    return StreamBuilder(
      stream: database.watchAllMovies(),
      builder: (context, AsyncSnapshot<List<Movie>> snapshot) {
        return CommonMoviesList(movies: snapshot.data);
      },
    );
  }
}