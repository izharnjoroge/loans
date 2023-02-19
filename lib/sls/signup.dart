import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class SignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    var height = MediaQuery.of(context).size.height * 0.6;
    return SafeArea(
      child: Scaffold(
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
                key: _formKey,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: controller.name,
                        style: const TextStyle(color: Colors.black),
                        cursorColor: Colors.green,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.green,
                          ),
                          labelText: "Enter Your Name",
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.person,
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
                        height: 20,
                      ),
                      TextFormField(
                        controller: controller.email,
                        style: const TextStyle(color: Colors.black),
                        cursorColor: Colors.green,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.green,
                          ),
                          labelText: "Enter Your Email",
                          hintText: "Email",
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
                        controller: controller.number,
                        style: const TextStyle(color: Colors.black),
                        cursorColor: Colors.green,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.green,
                          ),
                          labelText: "Enter Your PhoneNumber",
                          hintText: "Number",
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.numbers,
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
                        height: 20,
                      ),
                      TextFormField(
                        controller: controller.password,
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
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                SignUpController.instance.registerUser(
                                    controller.email.text.trim(),
                                    controller.password.text.trim());
                              }
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
      ),
    );
  }
}
