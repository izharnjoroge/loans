import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loans/exports.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                      keyboardType: TextInputType.emailAddress,
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
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.green,
                        ),
                        labelText: "Enter Your Password",
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.remove_red_eye_sharp,
                            color: Colors.green,
                          ),
                        ),
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
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            side: const BorderSide(color: Colors.black12),
                            backgroundColor: Colors.green,
                          ),
                          child: const Character(
                            fontsize: 20,
                            headtext: "Sign Up",
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
}
