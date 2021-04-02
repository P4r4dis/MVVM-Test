import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ViewModels/homePageViewModel.dart';
import 'Views/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies",
        home: ChangeNotifierProvider(
          create: (context) => HomePageViewModel(),
          child: HomePage(),
        ));
  }
}
