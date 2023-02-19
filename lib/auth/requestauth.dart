import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

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
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.black),
        )
        .catchError((error, stackTrace) {
      Get.snackbar(
        "Error",
        "Something went wrong",
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.black,
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
