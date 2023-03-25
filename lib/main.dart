import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'assets/colors/colors.dart';
import 'core/data/service_locator.dart';
import 'features/auth/domain/repository/auth_repo.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/sign_in_number.dart';
import 'features/bottom_navigation_bar/bottom_nav_bar.dart';
import 'features/favourites/presentation/bloc/favourites_bloc.dart';

Future<void> main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final navigatorKey = GlobalKey<NavigatorState>();

  // NavigatorState get navigator => navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavouritesBloc>(
          create: (context) => serviceLocator<FavouritesBloc>()
            ..add(const FavouritesEvent.getRecipes()),
        ),
        BlocProvider(
          create: (context) => AuthBloc(serviceLocator<AuthRepository>()),
        ),
      ],
      child: MaterialApp(
        //navigatorKey: navigatorKey,
        title: 'Recipe App',
        theme: ThemeData(
          fontFamily: 'DM Sans',
          primaryColor: orange,
          splashColor: orange.withOpacity(0.1),
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const BottomNavBar();
            } else {
              return SignInNumberPage();
            }
          },
        ),
      ),
    );
  }
}
