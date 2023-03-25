import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../core/app_functions.dart';
import '../bloc/auth_bloc.dart';

class SmsCheckPage extends StatelessWidget {
  String inputtedSmsCode = '';

  SmsCheckPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.keyboard_backspace,
                      )),
                ),
                Center(
                  child: Column(children: [
                    const Text(
                      'Enter Sms code',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldPinAutoFill(
                      onCodeChanged: (p0) {
                        inputtedSmsCode = p0;
                      },
                      autoFocus: true,
                      onCodeSubmitted: (code) {
                        context.read<AuthBloc>().add(AuthEvent.checkSms(
                              smsCode: code,
                              onFailure: (value) {
                                AppFunctions.showSnackbar(context, value);
                              },
                            ));
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'sms code',
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: orange, width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: orange, width: 2)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        context.read<AuthBloc>().add(AuthEvent.checkSms(
                            smsCode: inputtedSmsCode,
                            onFailure: (value) {
                              AppFunctions.showSnackbar(context, value);
                            }));
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
              ]),
        ),
      ),
    );
  }
}
