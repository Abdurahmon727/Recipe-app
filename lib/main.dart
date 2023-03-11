import 'package:flutter/material.dart';
import 'package:remote_recipe/assets/colors/colors.dart';

import 'features/bottom_navigation_bar/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        fontFamily: 'DM Sans',
        primaryColor: orange,
        splashColor: orange.withOpacity(0.1),
      ),
      home: const BottomNavBar(),
    );
  }
}
