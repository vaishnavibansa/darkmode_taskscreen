import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../BLoc/counter_bloc.dart';



class ThemeController {
   final lightTheme = ThemeData(
    // Light mode theme configurations
    brightness: Brightness.light,
    // Other theme properties...
  );

  final darkTheme = ThemeData(
    // Dark mode theme configurations
    brightness: Brightness.dark,
    // Other theme properties...
  );
  bool isDarkMode = false;


}
