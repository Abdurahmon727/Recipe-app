import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:remote_recipe/assets/images/images.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Image.asset(AppImages.avatar)))
        ],
      ),
    );
  }
}
