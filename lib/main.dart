import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'assets/colors/colors.dart';
import 'core/app_functions.dart';
import 'core/data/service_locator.dart';
import 'core/models/authentication_status.dart';
import 'core/splash/splash_screen.dart';
import 'features/auth/domain/repository/auth_repo.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/sign_in_number.dart';
import 'features/bottom_navigation_bar/bottom_nav_bar.dart';
import 'features/bottom_navigation_bar/widgets/navigator.dart';
import 'features/favourites/presentation/bloc/favourites_bloc.dart';
import 'objectbox.dart';

late ObjectBox objectbox;
Future<void> main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  objectbox = await ObjectBox.create();

  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get navigator => navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavouritesBloc>(
          create: (context) => serviceLocator<FavouritesBloc>()
            ..add(FavouritesEvent.getRecipes(
              onFailure: (errorMessage) {
                AppFunctions.showSnackbar(context, errorMessage);
              },
            )),
        ),
        BlocProvider(
          create: (context) => AuthBloc(serviceLocator<AuthRepository>()),
        ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Recipe App',
        theme: ThemeData(
          useMaterial3: true,
          textButtonTheme: TextButtonThemeData(style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return orange.withOpacity(0.5);
                }
                return white;
              },
            ),
          )),
          fontFamily: 'DM Sans',
          primaryColor: orange,
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
      ),
    );
  }
}
