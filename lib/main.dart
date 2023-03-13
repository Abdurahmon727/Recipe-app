import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remote_recipe/assets/colors/colors.dart';

import 'core/data/service_locator.dart';
import 'features/bottom_navigation_bar/bottom_nav_bar.dart';
import 'features/favourites/presentation/bloc/favourites_bloc.dart';

void main() {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavouritesBloc>(
      create: (context) => serviceLocator<FavouritesBloc>()
        ..add(const FavouritesEvent.getRecipes()),
      child: MaterialApp(
        title: 'Recipe App',
        theme: ThemeData(
          fontFamily: 'DM Sans',
          primaryColor: orange,
          splashColor: orange.withOpacity(0.1),
        ),
        home: const BottomNavBar(),
      ),
    );
  }
}
