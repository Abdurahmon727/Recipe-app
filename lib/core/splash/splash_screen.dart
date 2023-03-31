import 'package:flutter/material.dart';
import 'package:remote_recipe/assets/images/images.dart';

import '../../assets/colors/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Center(
          child: Image.asset(AppImages.logo),
        ));
  }
}
