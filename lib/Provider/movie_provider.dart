import 'package:deepika_assignment/Utils/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'ProviderUtils.dart';

class MoviesProvider extends ChangeNotifier {


  UIStates _uiStatesGetAllMovies = UIStates.DEFAULT;

  UIStates get getUiStatesGetAllMovies => _uiStatesGetAllMovies;


}
