import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:remote_recipe/core/app_functions.dart';

import '../../../../assets/colors/colors.dart';
import '../../../bottom_navigation_bar/widgets/navigator.dart';
import '../bloc/auth_bloc.dart';
import 'sms_check_page.dart';

class SignInNumberPage extends StatelessWidget {
  final controller = MaskedTextController(mask: '(00) 000 00 00');
  final textFieldKey = GlobalKey<FormState>();

  SignInNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Form(
                    key: textFieldKey,
                    child: Column(children: [
                      const Text(
                        'Sign in to your accound',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Phone number can not be empty';
                          }
                          if (value.length != 14) {
                            return 'Invalid phone number';
                          }
                          return null;
                        },
                        autofocus: true,
                        controller: controller,
                        decoration: const InputDecoration(
                            prefix: Text(
                              '+998 ',
                              style: TextStyle(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: orange, width: 2)),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: orange, width: 2)),
                            hintText: '(90) 000 00 00'),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () async {
                          final isOk = textFieldKey.currentState?.validate();
                          if (isOk ?? false) {
                            context.read<AuthBloc>().add(AuthEvent.signIn(
                                  phoneNumber: '+998 ${controller.text}',
                                  onFailure: (value) {
                                    AppFunctions.showSnackbar(context, value);
                                  },
                                  onSuccess: (_) {
                                    Navigator.push(
                                        context,
                                        fade(
                                            page: SmsCheckPage(
                                                phoneNumber:
                                                    '+998 ${controller.text}')));
                                  },
                                ));
                          }
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          width: double.infinity,
                          height: 60,
                          child: const Center(
                            child: Text(
                              'Sign in',
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
