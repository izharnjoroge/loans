import 'package:cloud_firestore/cloud_firestore.dart';
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

class RequestController extends GetxController {
  static RequestController get instance => Get.find();

  final loantype = TextEditingController();
  final name = TextEditingController();
  final email = TextEditingController();
  final idnumber = TextEditingController();
  final phonenumber = TextEditingController();
  final krapin = TextEditingController();
  final amount = TextEditingController();

  final _db = FirebaseFirestore.instance;

  createRequest(RequestModel requests) async {
    await _db
        .collection("Requests")
        .add(requests.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "Request sent",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.green),
        )
        .catchError((error, stackTrace) {
      Get.snackbar(
        "Error",
        "Something went wrong",
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.red,
      );
      //  print(error.toString());
    });
  }

  Future<List<RequestModel>> allRequests() async {
    final snapshot = await _db.collection("Requests").get();
    final requestData =
        snapshot.docs.map((e) => RequestModel.fromSnapshot(e)).toList();
    return requestData;
  }
}

class RequestModel {
  final String? id;
  final String loantype;
  final String name;
  final String email;
  final String idnumber;
  final String phonenumber;
  final String krapin;
  final String amount;

  const RequestModel({
    this.id,
    required this.loantype,
    required this.name,
    required this.email,
    required this.idnumber,
    required this.phonenumber,
    required this.krapin,
    required this.amount,
  });
  toJson() {
    return {
      "LoanType": loantype,
      "Name": name,
      "Email": email,
      "IdNumber": idnumber,
      "PhoneNumber": phonenumber,
      "KraPin": krapin,
      "Amount": amount,
    };
  }

  factory RequestModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return RequestModel(
      id: document.id,
      loantype: data["LoanType"],
      name: data["Name"],
      email: data["Email"],
      idnumber: data["IdNumber"],
      phonenumber: data["PhoneNumber"],
      krapin: data["KraPin"],
      amount: data["Amount"],
    );
  }
}

// class SignUpController extends GetxController {
//   static SignUpController get instance => Get.find();
//   final name = TextEditingController();
//   final email = TextEditingController();
//   final number = TextEditingController();
//   final password = TextEditingController();

//   void registerUser(String email, String password) {
//     Auth.instance.createUserWithEmailAndPassword(email, password);
//   }
// }

