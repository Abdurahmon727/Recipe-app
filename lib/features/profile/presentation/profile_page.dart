import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/images/images.dart';
import '../../../core/app_functions.dart';
import '../../../core/widgets/w_scale.dart';
import '../../auth/presentation/bloc/auth_bloc.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
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
                WScaleAnimation(
                  onTap: () async {
                    final result = await AppFunctions.pickImage();
                    result.either((error) {
                      print('ERROR on pick image: $error');
                    }, (file) {
                      print(file.readAsBytes());

                      //TODO
                    });
                  },
                  child: SizedBox(
                    height: 100,
                    child: Image.asset(
                      AppImages.avatar,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: orange, borderRadius: BorderRadius.circular(15)),
                  child: Text(FirebaseAuth.instance.currentUser!.phoneNumber ??
                      'Unknown'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
