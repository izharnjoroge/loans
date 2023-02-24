import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';
import 'package:loans/exports.dart';

class Auth extends GetxController {
  static Auth get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const NavScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const NavScreen())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      throw ex;
    }
  }

  Future<void> logInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const NavScreen())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      throw ex;
    }
  }

  Future<void> logOut() async => await _auth.signOut();
}

class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occurred"]);
  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case "weak password":
        return const SignUpWithEmailAndPasswordFailure(
            "Please enter a sronger password");
      case "invalid Email":
        return const SignUpWithEmailAndPasswordFailure("Enter a valid Email");
      case "Email in use":
        return const SignUpWithEmailAndPasswordFailure("Email is in use");
      case "User Disabled":
        return const SignUpWithEmailAndPasswordFailure("User Disabled");
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}

class SignInWithEmailAndPasswordFailure {
  final String message;

  const SignInWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occurred"]);
  factory SignInWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case "invalid Email":
        return const SignInWithEmailAndPasswordFailure("Enter a valid Email");
      case "Email in use":
        return const SignInWithEmailAndPasswordFailure("Email is in use");
      case "User Disabled":
        return const SignInWithEmailAndPasswordFailure("User Disabled");
      default:
        return const SignInWithEmailAndPasswordFailure();
    }
  }
}
