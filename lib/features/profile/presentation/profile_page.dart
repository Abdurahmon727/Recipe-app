import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:remote_recipe/assets/colors/colors.dart';
import 'package:remote_recipe/assets/images/images.dart';
import 'package:remote_recipe/core/app_functions.dart';
import 'package:remote_recipe/core/widgets/w_scale.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Align(
              alignment: Alignment.topRight,
              child: WScaleAnimation(
                onTap: () async {
                  await AppFunctions.pickImage();
                  //TODO:
                },
                child: const Icon(Icons.logout),
              ),
            ),
            Image.asset(
              AppImages.avatar,
              height: 100,
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: orange, borderRadius: BorderRadius.circular(15)),
              child: Text(
                  FirebaseAuth.instance.currentUser!.phoneNumber ?? 'Unknown'),
            ),
          ],
        ),
      ),
    );
  }
}
