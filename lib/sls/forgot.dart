import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:loans/exports.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.6;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              color: Colors.white10,
              height: height * 0.2,
            ),
            // const Character(headtext: "Sign In to Your Account", fontsize: 15),
            Form(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) =>
                          email != null && !EmailValidator.validate(email)
                              ? "Enter a valid email"
                              : null,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_add_alt_1_outlined,
                          color: Colors.green,
                        ),
                        labelText: "Enter Your Email",
                        labelStyle: TextStyle(color: Colors.green),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            resetPassword();
                            setState(() {
                              emailcontroller.clear();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            side: const BorderSide(color: Colors.black12),
                            backgroundColor: Colors.green,
                          ),
                          child: const Character(
                            fontsize: 20,
                            headtext: "Reset",
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Future resetPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailcontroller.text.trim());
      Get.snackbar("Success", "Check Email for reset link",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green.withOpacity(0.1),
          colorText: Colors.black);
    } on FirebaseAuthException {
      Get.snackbar(
        "Error",
        "Something went wrong",
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.black,
      );
    }
  }
}
