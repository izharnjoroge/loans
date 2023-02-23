import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';
import 'package:loans/exports.dart';

class CollectionModel {
  final String? id;
  final String name;
  final String member1;
  final String amount1;
  final String member2;
  final String amount2;
  final String member3;
  final String amount3;
  // final String sentBy;

  const CollectionModel({
    this.id,
    required this.name,
    required this.member1,
    required this.amount1,
    required this.member2,
    required this.amount2,
    required this.member3,
    required this.amount3,
    // required this.sentBy,
  });
  toJson() {
    return {
      "Name": name,
      "Member1": member1,
      "Amount1": amount1,
      "Member2": member2,
      "Amount2": amount2,
      "Member3": member3,
      "Amount3": amount3,
      // "AgentName": sentBy,
    };
  }

  factory CollectionModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return CollectionModel(
      id: document.id,
      name: data["Name"],
      member1: data["Member1"],
      amount1: data["Amount1"],
      member2: data["Member2"],
      amount2: data["Amount2"],
      member3: data["Member3"],
      amount3: data["Amount3"],
      // sentBy: data["AgentName"],
    );
  }
}

class CollectionController extends GetxController {
  final _customerRepo = Get.put(Collection1Controller());
  Future<List<CollectionModel>> getAllRequests() async {
    return await _customerRepo.allRequests();
  }
}
