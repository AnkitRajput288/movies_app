import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'Screens/dashboard.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness:Brightness.dark
      ),
      themeMode: ThemeMode.dark,
      home:  Dashboard(),
    );
  }
}
