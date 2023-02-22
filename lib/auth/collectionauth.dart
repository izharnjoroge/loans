import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class Collection1Controller extends GetxController {
  static Collection1Controller get instance => Get.find();

  final name = TextEditingController();
  final member1 = TextEditingController();
  final amount1 = TextEditingController();
  final member2 = TextEditingController();
  final amount2 = TextEditingController();
  final member3 = TextEditingController();
  final amount3 = TextEditingController();

  final _db = FirebaseFirestore.instance;

  createRequest(CollectionModel collections) async {
    await _db
        .collection("Collections")
        .add(collections.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "Collection recieved",
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

  Future<List<CollectionModel>> allRequests() async {
    final snapshot = await _db
        .collection("Collections")
        .orderBy("Name", descending: false)
        .get();
    final requestData =
        snapshot.docs.map((e) => CollectionModel.fromSnapshot(e)).toList();
    return requestData;
  }
}
