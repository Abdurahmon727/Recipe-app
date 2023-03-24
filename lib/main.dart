import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'assets/colors/colors.dart';
import 'core/data/service_locator.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/sign_in_number.dart';
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
  late final user;

  void initDynamicLink() async {
    FirebaseDynamicLinks.instance.onLink;
  }

  @override
  void initState() {
    user = FirebaseAuth.instance.authStateChanges();
    print(user);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavouritesBloc>(
          create: (context) => serviceLocator<FavouritesBloc>()
            ..add(const FavouritesEvent.getRecipes()),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
        home: SignInNumber(),
        title: 'Recipe App',
        theme: ThemeData(
          fontFamily: 'DM Sans',
          primaryColor: orange,
          splashColor: orange.withOpacity(0.1),
        ),
      ),
    );
  }
}
