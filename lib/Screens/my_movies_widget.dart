import '../Utils/enum_utils.dart';

import '../Network/Database/moor_database.dart';
import 'common_movies_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../main.dart';

class MyMoviesWidget extends StatefulHookWidget {
  const MyMoviesWidget({Key? key}) : super(key: key);

  @override
  _MyMoviesWidgetState createState() => _MyMoviesWidgetState();
}

class _MyMoviesWidgetState extends State<MyMoviesWidget>{


  @override
  Widget build(BuildContext context,) {
    return _buildMainWidget();
  }

  Widget _buildMainWidget() {
    return StreamBuilder(
      stream: database.watchAllMovies(),
      builder: (context, AsyncSnapshot<List<Movie>> snapshot) {
        var _listOfFilteredMovies = <Movie>[];
        snapshot.data?.forEach((element) {
          if(element.directorID == 1) {
            _listOfFilteredMovies.add(element);
          }
        });
        return CommonMoviesList(movies: _listOfFilteredMovies, module: EnumDashboardActiveScreenType.myMovies,);
      },
    );
  }
}
