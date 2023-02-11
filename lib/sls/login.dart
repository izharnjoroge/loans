import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loans/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            const Character(headtext: "Login to Your Account", fontsize: 15),
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
                      height: 20,
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Character(
                            fontsize: 10,
                            headtext: "Forgot Password?",
                          )),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Character(
                            fontsize: 20,
                            headtext: "LOGIN",
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const Character(headtext: "OR", fontsize: 15),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.network(
                              'http://pngimg.com/uploads/google/google_PNG19635.png',
                              height: 30,
                              width: 30),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Text('Sign-in with Google'),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const SignupScreen();
                              }));
                            },
                            child: Text.rich(
                              TextSpan(
                                  text: "Already Have An Account?",
                                  style: GoogleFonts.nunitoSans(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "SignUp",
                                      style: GoogleFonts.nunitoSans(
                                        textStyle: const TextStyle(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
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
