import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';
import 'package:loans/exports.dart';

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

class CustomerController extends GetxController {
  final _customerRepo = Get.put(RequestController());
  Future<List<RequestModel>> getAllRequests() async {
    return await _customerRepo.allRequests();
  }
}
