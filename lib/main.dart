import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remote_recipe/core/splash/splash_screen.dart';
import 'package:remote_recipe/features/profile/presentation/profile_page.dart';

import 'assets/colors/colors.dart';
import 'core/data/service_locator.dart';
import 'core/models/authentication_status.dart';
import 'features/auth/domain/repository/auth_repo.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/sign_in_number.dart';
import 'features/bottom_navigation_bar/bottom_nav_bar.dart';
import 'features/bottom_navigation_bar/widgets/navigator.dart';
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
  late final userListen;

  @override
  void initState() {
    userListen = FirebaseAuth.instance.authStateChanges();
    print(userListen);
    super.initState();
  }

  final navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get navigator => navigatorKey.currentState!;

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
      child: Builder(builder: (context) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          title: 'Recipe App',
          theme: ThemeData(
            fontFamily: 'DM Sans',
            primaryColor: orange,
            splashColor: orange.withOpacity(0.1),
          ),
          home: const SplashScreen(),
          builder: (context, child) => BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.authStatus == AuthenticationStatus.authenticated) {
                navigator.pushAndRemoveUntil(
                    fade(page: const BottomNavBar()), (route) => false);
              } else {
                navigator.pushAndRemoveUntil(
                    fade(page: SignInNumberPage()), (route) => false);
              }
            },
            child: child,
          ),
        );
      }),
    );
  }
}
