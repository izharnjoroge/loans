import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';
import 'package:loans/exports.dart';

class GroupModel {
  final String? id;
  final String name;
  final String? member1;
  final String? member2;
  final String? member3;
  final String? amount;
  final String? interest;
  final String? finalAmount;

  const GroupModel({
    this.id,
    required this.name,
    required this.member1,
    required this.member2,
    required this.member3,
    required this.amount,
    required this.interest,
    required this.finalAmount,
  });
  toJson() {
    return {
      "Name": name,
      "Member1": member1,
      "Member2": member2,
      "Member3": member3,
      "Amount": amount,
      "Interest": interest,
      "Final Amount": finalAmount,
    };
  }

  factory GroupModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return GroupModel(
      id: document.id,
      name: data["Name"],
      member1: data["Member1"],
      member2: data["Member2"],
      member3: data["Member3"],
      amount: data["Amount"],
      interest: data["Interest"],
      finalAmount: data["Final Amount"],
    );
  }
}

class GroupController extends GetxController {
  final _customerRepo = Get.put(Group1Controller());
  Future<List<GroupModel>> getAllRequests() async {
    return await _customerRepo.allRequests();
  }
}
