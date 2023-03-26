import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../core/app_functions.dart';
import '../bloc/auth_bloc.dart';

class SmsCheckPage extends StatefulWidget {
  const SmsCheckPage({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  State<SmsCheckPage> createState() => _SmsCheckPageState();
}

class _SmsCheckPageState extends State<SmsCheckPage> {
  String inputtedSmsCode = '';
  late Timer timer;
  int initialSeconds = 30;
  int secondsRemaining = 30;
  void startTimer(int newStatingTime) {
    initialSeconds = newStatingTime;
    secondsRemaining = initialSeconds;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (secondsRemaining != 0) {
          secondsRemaining--;
        }
      });
    });
  }

  Future<void> listenForSms() async {
    String signature = await SmsAutoFill().getAppSignature;
    await SmsAutoFill().listenForCode();
  }

  @override
  void initState() {
    startTimer(45);

    super.initState();
  }

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
                Column(mainAxisAlignment: MainAxisAlignment.end, children: [
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: secondsRemaining != 0
                        ? Text('00:$secondsRemaining')
                        : TextButton(
                            onPressed: () {
                              context.read<AuthBloc>().add(AuthEvent.signIn(
                                    phoneNumber: widget.phoneNumber,
                                    onFailure: (errorMessage) {
                                      AppFunctions.showSnackbar(
                                          context, errorMessage);
                                    },
                                    onSuccess: (_) {
                                      startTimer(initialSeconds + 15);
                                    },
                                  ));
                            },
                            child: const Text(
                              'Resent',
                              style: TextStyle(color: orange),
                            )),
                  ),
                  const SizedBox(height: 5),
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
                          borderRadius: BorderRadius.all(Radius.circular(15))),
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
              ]),
        ),
      ),
    );
  }
}
