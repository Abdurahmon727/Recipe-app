// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:remote_recipe/assets/colors/colors.dart';

class SignInNumber extends StatelessWidget {
  final controller = MaskedTextController(mask: '(00) 000 00 00');
  final textFieldKey = GlobalKey<FormState>();

  SignInNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                          textFieldKey.currentState?.validate();
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
