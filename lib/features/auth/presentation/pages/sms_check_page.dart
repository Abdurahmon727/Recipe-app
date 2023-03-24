import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../../assets/colors/colors.dart';

class SmsChechPage extends StatelessWidget {
  final controller = MaskedTextController(mask: '000000');
  final smsTextFieldKey = GlobalKey<FormState>();

  SmsChechPage({super.key});
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
                  child: Form(
                    key: smsTextFieldKey,
                    child: Column(children: [
                      const Text(
                        'Enter Sms code',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldPinAutoFill(
                        autoFocus: true,
                        onCodeSubmitted: (p0) {
                          //TODO
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'sms code',
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: Colors.red, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: orange, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: orange, width: 2)),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          //TODO
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
