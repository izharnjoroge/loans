import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class Agent1Controller extends GetxController {
  static Agent1Controller get instance => Get.find();

  final name = TextEditingController();
  final email = TextEditingController();
  final registration = TextEditingController();
  final phone = TextEditingController();

  final _db = FirebaseFirestore.instance;

  Future<AgentModel> getagentName(String email) async {
    final snapshot =
        await _db.collection("Agents").where("Email", isEqualTo: email).get();
    final requestData =
        snapshot.docs.map((e) => AgentModel.fromSnapshot(e)).single;
    return requestData;
  }
}

class AgentProfile extends GetxController {
  static AgentProfile get instance => Get.find();
  final _agentRepo = Get.put(Auth());
  final _nameRepo = Get.put(Agent1Controller());
  getAgent() {
    final email = _agentRepo.firebaseUser.value?.email;
    if (email != null) {
      return _nameRepo.getagentName(email);
    }
  }
}
