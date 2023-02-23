import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/auth/auth.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  final name = TextEditingController();
  final email = TextEditingController();
  final number = TextEditingController();
  final password = TextEditingController();

  void registerUser(String email, String password) {
    Auth.instance.createUserWithEmailAndPassword(email, password);
  }
}

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  final email = TextEditingController();

  final password = TextEditingController();

  void loginUser(String email, String password) {
    Auth.instance.logInWithEmailAndPassword(email, password);
  }
}


