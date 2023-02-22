import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class Group1Controller extends GetxController {
  static Group1Controller get instance => Get.find();

  final name = TextEditingController();
  final member1 = TextEditingController();

  final member2 = TextEditingController();

  final member3 = TextEditingController();
  final amount = TextEditingController();
  final interest = TextEditingController();
  final finalAmount = TextEditingController();
  final _db = FirebaseFirestore.instance;

  createRequest(GroupModel groups) async {
    await _db
        .collection("Groups")
        .add(groups.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "Group registerd",
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

  Future<List<GroupModel>> allRequests() async {
    final snapshot =
        await _db.collection("Groups").orderBy("Name", descending: false).get();
    final requestData =
        snapshot.docs.map((e) => GroupModel.fromSnapshot(e)).toList();
    return requestData;
  }
}
