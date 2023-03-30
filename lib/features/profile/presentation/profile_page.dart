import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:remote_recipe/assets/colors/colors.dart';
import 'package:remote_recipe/assets/images/images.dart';
import 'package:remote_recipe/core/app_functions.dart';
import 'package:remote_recipe/core/widgets/w_scale.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remote_recipe/features/auth/presentation/bloc/auth_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String path = '';
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
                  context.read<AuthBloc>().add(
                    AuthEvent.logOut(
                      onFailure: (String errorMessage) {
                        AppFunctions.showSnackbar(context, errorMessage);
                      },
                    ),
                  );
                },
                child: const Icon(Icons.logout),
              ),
            ),
            GestureDetector(
              onTap: () async {
                final result = await AppFunctions.pickImage();
                result.either((error) {
                  print('ERROR on pick image: $error');
                }, (file) {
                  print(file.readAsBytes());

                  //TODO
                });
              },
              child: Image.asset(
                AppImages.avatar,
                height: 100,
              ),
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
